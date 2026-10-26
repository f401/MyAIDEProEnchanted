.class public Lorg/antlr/v4/runtime/RuntimeMetaData;
.super Ljava/lang/Object;
.source "RuntimeMetaData.java"


# static fields
.field public static final VERSION:Ljava/lang/String; = "4.9.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    if-eqz p0, :cond_2

    .line 150
    const-string v0, "4.9.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "4.9.2"

    invoke-static {v0}, Lorg/antlr/v4/runtime/RuntimeMetaData;->getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/antlr/v4/runtime/RuntimeMetaData;->getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 155
    :goto_0
    const-string v3, "4.9.2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "4.9.2"

    invoke-static {v3}, Lorg/antlr/v4/runtime/RuntimeMetaData;->getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/antlr/v4/runtime/RuntimeMetaData;->getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "ANTLR Tool version %s used for code generation does not match the current runtime version %s%n"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v2

    const-string v6, "4.9.2"

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    if-eqz v3, :cond_1

    .line 164
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "ANTLR Runtime version %s used for parser compilation does not match the current runtime version %s%n"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string v2, "4.9.2"

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 150
    goto :goto_0

    :cond_3
    move v3, v2

    .line 155
    goto :goto_1
.end method

.method public static getMajorMinorVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v1, 0x2e

    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 180
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 181
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v0, :cond_2

    .line 184
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-ltz v2, :cond_0

    .line 188
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getRuntimeVersion()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "4.9.2"

    return-object v0
.end method
