.class public Lorg/apache/tools/ant/taskdefs/SQLExec$DelimiterType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "SQLExec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/SQLExec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelimiterType"
.end annotation


# static fields
.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final ROW:Ljava/lang/String; = "row"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "row"

    aput-object v2, v0, v1

    return-object v0
.end method
