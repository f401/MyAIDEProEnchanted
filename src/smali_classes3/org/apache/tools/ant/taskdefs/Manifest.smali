.class public Lorg/apache/tools/ant/taskdefs/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;,
        Lorg/apache/tools/ant/taskdefs/Manifest$Section;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_CLASSPATH:Ljava/lang/String; = "Class-Path"

.field private static final ATTRIBUTE_CLASSPATH_LC:Ljava/lang/String;

.field public static final ATTRIBUTE_FROM:Ljava/lang/String; = "From"

.field private static final ATTRIBUTE_FROM_LC:Ljava/lang/String;

.field public static final ATTRIBUTE_MANIFEST_VERSION:Ljava/lang/String; = "Manifest-Version"

.field private static final ATTRIBUTE_MANIFEST_VERSION_LC:Ljava/lang/String;

.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Name"

.field private static final ATTRIBUTE_NAME_LC:Ljava/lang/String;

.field public static final ATTRIBUTE_SIGNATURE_VERSION:Ljava/lang/String; = "Signature-Version"

.field public static final DEFAULT_MANIFEST_VERSION:Ljava/lang/String; = "1.0"

.field public static final EOL:Ljava/lang/String; = "\r\n"

.field public static final ERROR_FROM_FORBIDDEN:Ljava/lang/String; = "Manifest attributes should not start with \"From\" in \""

.field public static final JAR_CHARSET:Ljava/nio/charset/Charset;

.field public static final JAR_ENCODING:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_LINE_LENGTH:I = 0x48

.field public static final MAX_SECTION_LENGTH:I = 0x46


# instance fields
.field private mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

.field private manifestVersion:Ljava/lang/String;

.field private sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/Manifest$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->JAR_CHARSET:Ljava/nio/charset/Charset;

    .line 98
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->JAR_ENCODING:Ljava/lang/String;

    .line 100
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 101
    const-string v1, "Manifest-Version"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->ATTRIBUTE_MANIFEST_VERSION_LC:Ljava/lang/String;

    .line 102
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 103
    const-string v1, "Name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->ATTRIBUTE_NAME_LC:Ljava/lang/String;

    .line 104
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 105
    const-string v1, "From"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->ATTRIBUTE_FROM_LC:Ljava/lang/String;

    .line 106
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 107
    const-string v1, "Class-Path"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->ATTRIBUTE_CLASSPATH_LC:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    .line 743
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 746
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    .line 781
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    .line 743
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 746
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    .line 793
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 795
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->read(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 796
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 797
    const-string v3, "Manifest-Version"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 798
    if-eqz v2, :cond_0

    .line 799
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    .line 800
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    const-string v3, "Manifest-Version"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->removeAttribute(Ljava/lang/String;)V

    .line 804
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 805
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 809
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;-><init>()V

    .line 810
    if-nez v0, :cond_2

    .line 811
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;)V

    .line 812
    const-string v2, "Name"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_1
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->setName(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->read(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Manifest;->addConfiguredSection(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    goto :goto_0

    .line 813
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest sections should start with a \"Name\" attribute and not \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/ManifestException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_2
    new-instance v4, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-direct {v4, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->addAttributeAndCheck(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)Ljava/lang/String;

    goto :goto_1

    .line 831
    :cond_3
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 58
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->ATTRIBUTE_NAME_LC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 58
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->ATTRIBUTE_FROM_LC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 58
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->ATTRIBUTE_CLASSPATH_LC:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultManifest()Lorg/apache/tools/ant/taskdefs/Manifest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 756
    :try_start_0
    const-class v0, Lorg/apache/tools/ant/taskdefs/Manifest;

    const-string v1, "/org/apache/tools/ant/defaultManifest.mf"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 758
    if-eqz v1, :cond_2

    .line 762
    :try_start_1
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v3, Lorg/apache/tools/ant/taskdefs/Manifest;->JAR_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>(Ljava/io/Reader;)V

    .line 763
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    if-nez v0, :cond_0

    .line 765
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    :cond_0
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Created-By"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->getMainSection()Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->access$300(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-object v2

    .line 759
    :cond_2
    :try_start_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Could not find default manifest: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/org/apache/tools/ant/defaultManifest.mf"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 757
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_0
    :try_start_5
    throw v0
    :try_end_5
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Default manifest is invalid !!"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 773
    :catch_1
    move-exception v0

    .line 774
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Unable to read default manifest"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 757
    :catchall_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic lambda$getWarnings$0(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)Ljava/util/ArrayList;
    .registers 2

    .line 1017
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getWarnings()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 858
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 861
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Manifest;->ATTRIBUTE_MANIFEST_VERSION_LC:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    goto :goto_0

    .line 859
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Attributes must have name and value"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredSection(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 842
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getName()Ljava/lang/String;

    move-result-object v0

    .line 843
    if-eqz v0, :cond_0

    .line 846
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    return-void

    .line 844
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Sections must have a name"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1047
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return v1

    .line 1051
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 1052
    goto :goto_0

    .line 1055
    :cond_2
    check-cast p1, Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 1056
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1057
    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1064
    :cond_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    move v1, v0

    goto :goto_0

    .line 1060
    :cond_4
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public getMainSection()Lorg/apache/tools/ant/taskdefs/Manifest$Section;
    .registers 2

    .line 1083
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .registers 2

    .line 1074
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSection(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Section;
    .registers 3

    .line 1094
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    return-object v0
.end method

.method public getSectionNames()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getWarnings()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getWarnings()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Manifest$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Manifest$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1020
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1029
    const/4 v0, 0x0

    .line 1031
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1032
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1034
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->hashCode()I

    move-result v1

    .line 1035
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    .line 1037
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public merge(Lorg/apache/tools/ant/taskdefs/Manifest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;Z)V

    .line 879
    return-void
.end method

.method public merge(Lorg/apache/tools/ant/taskdefs/Manifest;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 894
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 895
    return-void
.end method

.method public merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 914
    if-eqz p1, :cond_4

    .line 915
    if-eqz p2, :cond_2

    .line 916
    iget-object v0, p1, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 921
    :goto_0
    iget-object v0, p1, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 922
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    .line 925
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest;->getSectionNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 926
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 927
    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 928
    if-nez v1, :cond_3

    .line 929
    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->addConfiguredSection(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    goto :goto_1

    .line 918
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v0, v1, p3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->merge(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Z)V

    goto :goto_0

    .line 933
    :cond_3
    invoke-virtual {v1, v0, p3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->merge(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Z)V

    goto :goto_1

    .line 937
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 998
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1000
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->write(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    const-string v0, ""

    goto :goto_0
.end method

.method public write(Ljava/io/PrintWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->write(Ljava/io/PrintWriter;Z)V

    .line 949
    return-void
.end method

.method public write(Ljava/io/PrintWriter;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manifest-Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->manifestVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 965
    const-string v1, "Signature-Version"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    if-eqz v0, :cond_0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature-Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 969
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    const-string v2, "Signature-Version"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->removeAttribute(Ljava/lang/String;)V

    .line 971
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->write(Ljava/io/PrintWriter;Z)V

    .line 974
    if-eqz v0, :cond_1

    .line 976
    :try_start_0
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    const-string v2, "Signature-Version"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->mainSection:Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 985
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->getSection(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    move-result-object v0

    .line 986
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->write(Ljava/io/PrintWriter;Z)V

    goto :goto_1

    .line 988
    :cond_2
    return-void

    .line 979
    :catch_0
    move-exception v0

    goto :goto_0
.end method
