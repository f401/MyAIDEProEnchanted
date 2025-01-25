.class public Lgroovyjarjarantlr/build/ANTLR;
.super Ljava/lang/Object;


# static fields
.field public static DW:Ljava/lang/String; = "."

.field public static FH:[Ljava/lang/String; = null

.field public static j6:Ljava/lang/String; = "javac"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "antlr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "groovyjarjarantlr/actions/cpp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "groovyjarjarantlr/actions/java"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "groovyjarjarantlr/actions/csharp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "groovyjarjarantlr/collections"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "groovyjarjarantlr/collections/impl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "groovyjarjarantlr/debug"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "groovyjarjarantlr/ASdebug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "groovyjarjarantlr/debug/misc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "groovyjarjarantlr/preprocessor"

    aput-object v2, v0, v1

    sput-object v0, Lgroovyjarjarantlr/build/ANTLR;->FH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "groovyjarjarantlr.build.compiler"

    sget-object v1, Lgroovyjarjarantlr/build/ANTLR;->j6:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgroovyjarjarantlr/build/ANTLR;->j6:Ljava/lang/String;

    const-string v0, "groovyjarjarantlr.build.root"

    sget-object v1, Lgroovyjarjarantlr/build/ANTLR;->DW:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgroovyjarjarantlr/build/ANTLR;->DW:Ljava/lang/String;

    return-void
.end method
