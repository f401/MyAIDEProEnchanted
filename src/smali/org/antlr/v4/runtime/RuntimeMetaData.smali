.class public Lorg/antlr/v4/runtime/RuntimeMetaData;
.super Ljava/lang/Object;
.source "RuntimeMetaData.java"


# static fields
.field public static final VERSION:Ljava/lang/String; = "4.9.2"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 149
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "4.9.2"

    if-eqz p0, :cond_1c

    .line 150
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {v2}, Lorg/antlr/v4/runtime/RuntimeMetaData;->getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lorg/antlr/v4/runtime/RuntimeMetaData;->getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 155
    :goto_1d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v2}, Lorg/antlr/v4/runtime/RuntimeMetaData;->getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lorg/antlr/v4/runtime/RuntimeMetaData;->getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    const/4 v5, 0x2

    if-eqz v3, :cond_44

    .line 160
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v1

    aput-object v2, v6, v0

    const-string p0, "ANTLR Tool version %s used for code generation does not match the current runtime version %s%n"

    invoke-virtual {v3, p0, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_44
    if-eqz v4, :cond_53

    .line 164
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v2, v3, v0

    const-string p1, "ANTLR Runtime version %s used for parser compilation does not match the current runtime version %s%n"

    invoke-virtual {p0, p1, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_53
    return-void
.end method

.method public static getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 179
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_f

    .line 180
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    .line 181
    :goto_10
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v0, :cond_20

    .line 184
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_20
    if-ltz v1, :cond_26

    .line 188
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 191
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRuntimeVersion()Ljava/lang/String;
    .registers 1

    .line 83
    const-string v0, "4.9.2"

    return-object v0
.end method
