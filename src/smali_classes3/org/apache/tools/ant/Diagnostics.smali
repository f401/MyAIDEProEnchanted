.class public final Lorg/apache/tools/ant/Diagnostics;
.super Ljava/lang/Object;
.source "Diagnostics.java"


# static fields
.field private static final BIG_DRIFT_LIMIT:I = 0x2710

.field protected static final ERROR_PROPERTY_ACCESS_BLOCKED:Ljava/lang/String; = "Access to this property blocked by a security manager"

.field private static final KILOBYTE:I = 0x400

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final SECONDS_PER_MILLISECOND:I = 0x3e8

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TEST_FILE_SIZE:I = 0x20


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static doReport(Ljava/io/PrintStream;)V
    .registers 2

    .line 285
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->doReport(Ljava/io/PrintStream;I)V

    .line 286
    return-void
.end method

.method public static doReport(Ljava/io/PrintStream;I)V
    .registers 4

    .line 295
    const-string v0, "------- Ant diagnostics report -------"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lorg/apache/tools/ant/Main;->getAntVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    const-string v0, "Implementation Version"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "core tasks     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/apache/tools/ant/Main;

    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->getImplementationVersion(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-class v1, Lorg/apache/tools/ant/Main;

    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->getClassLocation(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    const-string v0, "ANT PROPERTIES"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 303
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportAntProperties(Ljava/io/PrintStream;)V

    .line 305
    const-string v0, "ANT_HOME/lib jar listing"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 306
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportAntHomeLibraries(Ljava/io/PrintStream;)V

    .line 308
    const-string v0, "USER_HOME/.ant/lib jar listing"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 309
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportUserHomeLibraries(Ljava/io/PrintStream;)V

    .line 311
    const-string v0, "Tasks availability"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 312
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportTasksAvailability(Ljava/io/PrintStream;)V

    .line 314
    const-string v0, "org.apache.env.Which diagnostics"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportWhich(Ljava/io/PrintStream;)V

    .line 317
    const-string v0, "XML Parser information"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 318
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportParserInfo(Ljava/io/PrintStream;)V

    .line 320
    const-string v0, "XSLT Processor information"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 321
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportXSLTProcessorInfo(Ljava/io/PrintStream;)V

    .line 323
    const-string v0, "System properties"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 324
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportSystemProperties(Ljava/io/PrintStream;)V

    .line 326
    const-string v0, "Temp dir"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 327
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportTempDir(Ljava/io/PrintStream;)V

    .line 329
    const-string v0, "Locale information"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 330
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportLocale(Ljava/io/PrintStream;)V

    .line 332
    const-string v0, "Proxy information"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 333
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportProxy(Ljava/io/PrintStream;)V

    .line 335
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 336
    return-void
.end method

.method private static doReportAntHomeLibraries(Ljava/io/PrintStream;)V
    .registers 3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ant.home: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ant.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->listLibraries()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/Diagnostics;->printLibraries([Ljava/io/File;Ljava/io/PrintStream;)V

    .line 407
    return-void
.end method

.method private static doReportAntProperties(Ljava/io/PrintStream;)V
    .registers 5

    .line 385
    new-instance v2, Lorg/apache/tools/ant/Project;

    invoke-direct {v2}, Lorg/apache/tools/ant/Project;-><init>()V

    .line 386
    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->initProperties()V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ant.version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ant.version"

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ant.java.version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, "ant.java.version"

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is this the Apache Harmony VM? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isApacheHarmony()Z

    move-result v0

    const-string v1, "yes"

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is this the Kaffe VM? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "yes"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is this gij/gcj? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isGij()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ant.core.lib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ant.core.lib"

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ant.home: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ant.home"

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    return-void

    .line 391
    :cond_0
    const-string v0, "no"

    goto :goto_0

    .line 393
    :cond_1
    const-string v0, "no"

    goto :goto_1

    .line 395
    :cond_2
    const-string v0, "no"

    goto :goto_2
.end method

.method private static doReportLocale(Ljava/io/PrintStream;)V
    .registers 13

    .line 626
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 627
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 628
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timezone "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 632
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 633
    const/4 v5, 0x7

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 634
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 635
    const/16 v10, 0xd

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 636
    const/16 v11, 0xe

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 631
    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v8, v10

    mul-int/lit16 v8, v8, 0x3e8

    add-int/2addr v6, v8

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method private static doReportParserInfo(Ljava/io/PrintStream;)V
    .registers 4

    .line 513
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXMLParserName()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXMLParserLocation()Ljava/lang/String;

    move-result-object v1

    .line 515
    const-string v2, "XML Parser"

    invoke-static {p0, v2, v0, v1}, Lorg/apache/tools/ant/Diagnostics;->printParserInfo(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getNamespaceParserName()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getNamespaceParserLocation()Ljava/lang/String;

    move-result-object v1

    .line 516
    const-string v2, "Namespace-aware parser"

    invoke-static {p0, v2, v0, v1}, Lorg/apache/tools/ant/Diagnostics;->printParserInfo(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private static doReportProxy(Ljava/io/PrintStream;)V
    .registers 3

    .line 663
    const-string v0, "http.proxyHost"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 664
    const-string v0, "http.proxyPort"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 665
    const-string v0, "http.proxyUser"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 666
    const-string v0, "http.proxyPassword"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 667
    const-string v0, "http.nonProxyHosts"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 668
    const-string v0, "https.proxyHost"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 669
    const-string v0, "https.proxyPort"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 670
    const-string v0, "https.nonProxyHosts"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 671
    const-string v0, "ftp.proxyHost"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 672
    const-string v0, "ftp.proxyPort"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 673
    const-string v0, "ftp.nonProxyHosts"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 674
    const-string v0, "socksProxyHost"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 675
    const-string v0, "socksProxyPort"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 676
    const-string v0, "java.net.socks.username"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 677
    const-string v0, "java.net.socks.password"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 679
    const-string v0, "java.net.useSystemProxies"

    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 680
    new-instance v0, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;-><init>()V

    .line 681
    const-string v1, "Java1.5+ proxy settings:"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method private static doReportSystemProperties(Ljava/io/PrintStream;)V
    .registers 3

    .line 351
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda2;

    .line 360
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 361
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    .line 356
    const-string v0, "Access to System.getProperties() blocked by a security manager"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static doReportTasksAvailability(Ljava/io/PrintStream;)V
    .registers 7

    .line 473
    const-class v0, Lorg/apache/tools/ant/Main;

    const-string v1, "/org/apache/tools/ant/taskdefs/defaults.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 475
    if-nez v0, :cond_0

    .line 476
    const-string v0, "None available"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 480
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 481
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 484
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 485
    invoke-virtual {v2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 486
    :catch_0
    move-exception v1

    .line 487
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Not Available (the implementation class is not present)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 502
    :catch_1
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :catch_2
    move-exception v1

    .line 493
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Initialization error"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :catch_3
    move-exception v1

    .line 490
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : Missing dependency "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {v2}, Ljava/util/Properties;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 497
    const-string v0, "All defined tasks are available"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_2
    const-string v0, "A task being missing/unavailable should only matter if you are trying to use it"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private static doReportTempDir(Ljava/io/PrintStream;)V
    .registers 13

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 549
    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 550
    if-nez v3, :cond_1

    .line 551
    const-string v0, "Warning: java.io.tmpdir is undefined"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temp dir is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning, java.io.tmpdir directory does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 566
    :try_start_0
    const-string v2, "diag"

    const-string v5, "txt"

    invoke-static {v2, v5, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 568
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 569
    const/16 v2, 0x400

    :try_start_2
    new-array v7, v2, [B

    move v2, v0

    .line 570
    :goto_1
    const/16 v5, 0x20

    if-ge v2, v5, :cond_3

    .line 571
    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 573
    :cond_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 577
    const-wide/16 v10, 0x3e8

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 578
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 580
    :goto_2
    const/4 v2, 0x0

    const/16 v6, 0x400

    :try_start_4
    invoke-virtual {v5, v7, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_4

    .line 582
    add-int/2addr v0, v2

    goto :goto_2

    .line 584
    :cond_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 587
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 588
    sub-long/2addr v6, v8

    .line 589
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 591
    const-string v2, "Temp dir is writeable"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 592
    const v2, 0x8000

    if-eq v0, v2, :cond_6

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", but seems to be full.  Wrote 32768but could only read "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temp dir alignment with system clock is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    cmp-long v0, v6, v8

    if-lez v0, :cond_5

    .line 602
    const-string v0, "Warning: big clock drift -maybe a network filesystem"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 612
    :cond_5
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 613
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 614
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 615
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 597
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 604
    :catch_0
    move-exception v2

    move-object v0, v1

    move-object v5, v4

    move-object v6, v4

    .line 605
    :goto_5
    :try_start_7
    invoke-static {v2}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create a temporary file in the temp dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be created/written to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 612
    invoke-static {v6}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 613
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 614
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 608
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v6, v4

    move-object v5, v4

    move-object v0, v4

    .line 609
    :goto_6
    :try_start_8
    invoke-static {v2}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    .line 610
    const-string v1, "Failed to check whether tempdir is writable"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 612
    invoke-static {v6}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 613
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 614
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 612
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    :goto_7
    invoke-static {v6}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 613
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 614
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 615
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 617
    :cond_7
    throw v2

    .line 604
    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v0, v4

    move-object v5, v4

    move-object v6, v4

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v0, v1

    move-object v5, v4

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v0, v1

    move-object v6, v4

    goto :goto_5

    .line 608
    :catch_5
    move-exception v2

    move-object v6, v4

    move-object v5, v4

    move-object v0, v1

    goto :goto_6

    :catch_6
    move-exception v2

    move-object v5, v4

    move-object v0, v1

    goto :goto_6

    :catch_7
    move-exception v2

    move-object v6, v4

    move-object v0, v1

    goto :goto_6

    .line 612
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-object v5, v4

    move-object v6, v4

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-object v5, v4

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-object v6, v4

    goto :goto_7

    :catchall_4
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_7
.end method

.method private static doReportUserHomeLibraries(Ljava/io/PrintStream;)V
    .registers 4

    .line 415
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.home: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/apache/tools/ant/launch/Launcher;->USER_LIBDIR:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->listJarFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/Diagnostics;->printLibraries([Ljava/io/File;Ljava/io/PrintStream;)V

    .line 419
    return-void
.end method

.method private static doReportWhich(Ljava/io/PrintStream;)V
    .registers 7

    const/4 v0, 0x0

    .line 443
    .line 445
    :try_start_0
    const-string v1, "org.apache.env.Which"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 446
    const-string v2, "main"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 448
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 459
    const-string v1, "Error while running org.apache.env.Which"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 462
    :cond_1
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 449
    :catch_1
    move-exception v1

    .line 450
    const-string v1, "Not available."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    const-string v1, "Download it at https://xml.apache.org/commons/"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method private static doReportXSLTProcessorInfo(Ljava/io/PrintStream;)V
    .registers 4

    .line 525
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXSLTProcessorName()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXSLTProcessorLocation()Ljava/lang/String;

    move-result-object v1

    .line 527
    const-string v2, "XSLT Processor"

    invoke-static {p0, v2, v0, v1}, Lorg/apache/tools/ant/Diagnostics;->printParserInfo(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private static getClassLocation(Ljava/lang/Class;)Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method private static getImplementationVersion(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNamespaceParserLocation()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getNamespaceXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->getClassLocation(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v1

    .line 253
    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getNamespaceParserName()Ljava/lang/String;
    .registers 1

    .line 237
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getNamespaceXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    .line 242
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 373
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    const-string v0, "Access to this property blocked by a security manager"

    goto :goto_0
.end method

.method private static getSAXParser()Ljavax/xml/parsers/SAXParser;
    .registers 2

    const/4 v0, 0x0

    .line 187
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 197
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v1

    .line 200
    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    :catch_1
    move-exception v1

    .line 192
    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getXMLParserLocation()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 227
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 228
    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->getClassLocation(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getXMLParserName()Ljava/lang/String;
    .registers 1

    .line 161
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    const-string v0, "Could not create an XML Parser"

    .line 166
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getXSLTProcessor()Ljavax/xml/transform/Transformer;
    .registers 1

    .line 210
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getXSLTProcessorLocation()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 263
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXSLTProcessor()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 264
    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->getClassLocation(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getXSLTProcessorName()Ljava/lang/String;
    .registers 1

    .line 174
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXSLTProcessor()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    const-string v0, "Could not create an XSLT Processor"

    .line 179
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static header(Ljava/io/PrintStream;Ljava/lang/String;)V
    .registers 3

    .line 339
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 340
    const-string v0, "-------------------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    const-string v0, "-------------------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method private static ignoreThrowable(Ljava/lang/Throwable;)V
    .registers 1

    .line 277
    return-void
.end method

.method public static isOptionalAvailable()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$doReportSystemProperties$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$listJarFiles$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 123
    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static listJarFiles(Ljava/io/File;)[Ljava/io/File;
    .registers 2

    .line 123
    sget-object v0, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static listLibraries()[Ljava/io/File;
    .registers 3

    .line 109
    const-string v0, "ant.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->listJarFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    .line 131
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->doReport(Ljava/io/PrintStream;)V

    .line 132
    return-void
.end method

.method private static printLibraries([Ljava/io/File;Ljava/io/PrintStream;)V
    .registers 8

    .line 427
    if-nez p0, :cond_1

    .line 428
    const-string v0, "No such directory."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    :cond_0
    return-void

    .line 431
    :cond_1
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static printParserInfo(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 532
    if-nez p2, :cond_0

    .line 533
    const-string p2, "unknown"

    .line 535
    :cond_0
    if-nez p3, :cond_1

    .line 536
    const-string p3, "unknown"

    .line 538
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method private static printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0x22

    .line 646
    invoke-static {p1}, Lorg/apache/tools/ant/Diagnostics;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 649
    const-string v1, " = "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(C)V

    .line 651
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(C)V

    .line 654
    :cond_0
    return-void
.end method

.method public static validateVersion()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    return-void
.end method
