.class public Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FixCRLF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/FixCRLF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrLf"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 689
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 696
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "asis"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cr"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lf"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "crlf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mac"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "unix"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dos"

    aput-object v2, v0, v1

    return-object v0
.end method
