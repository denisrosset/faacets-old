import sbt._
import Keys._

object FaacetsRootBuild extends Build {
  override def settings = super.settings ++ Seq(
    organization := "com.faacets",
    version := "0.1",
    
    scalaVersion in ThisBuild := "2.10.3"
  )

  lazy val root = Project(id = "faacets-root",
    base = file(".")) aggregate(faacetsFamilies, faacetsMatlab, faacetsCore, polyta, alasc)

  lazy val faacetsFamilies = Project(id = "faacets-families",
    base = file("faacets-families")) dependsOn(faacetsCore, alasc, polyta)

  lazy val faacetsMatlab = Project(id = "faacets-matlab",
    base = file("faacets-matlab")) dependsOn(faacetsCore, alasc, polyta)

  lazy val faacetsCore = Project(id = "faacets-core",
    base = file("faacets-core")) dependsOn(alasc, polyta)

  lazy val polyta = Project(id = "polyta",
    base = file("polyta")) dependsOn(alasc)

  lazy val alasc = Project(id = "alasc",
    base = file("alasc"))
}
