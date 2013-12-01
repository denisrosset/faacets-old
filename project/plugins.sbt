resolvers ++= Seq(
  "laughedelic maven releases" at "http://dl.bintray.com/laughedelic/maven"
    , Resolver.url("laughedelic sbt-plugins", url("http://dl.bintray.com/laughedelic/sbt-plugins"))(Resolver.ivyStylePatterns)
)

addSbtPlugin("laughedelic" % "literator-plugin" % "0.4.0")
