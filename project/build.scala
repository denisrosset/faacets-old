import sbt._
import Keys._

object FaacetsRootBuild extends Build {
  override def settings = super.settings ++ Seq(
    organization := "com.faacets",
    version := "0.1",
    
    scalaVersion in ThisBuild := "2.10.1"
  )

  lazy val root = Project(id = "faacets-root",
    base = file(".")) aggregate(faacets, alasc)

  lazy val faacets = Project(id = "faacets-core",
    base = file("faacets-core")) dependsOn(alasc)

  lazy val alasc = Project(id = "alasc",
    base = file("alasc"))
}
