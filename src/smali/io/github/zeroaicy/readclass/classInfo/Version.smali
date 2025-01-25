.class public Lio/github/zeroaicy/readclass/classInfo/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final Version:Ljava/lang/String; = "1.5.1-beta"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 9
    const-string v0, "1.5.1-beta"

    return-object v0
.end method
