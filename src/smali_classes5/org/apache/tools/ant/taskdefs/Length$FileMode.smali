.class public Lorg/apache/tools/ant/taskdefs/Length$FileMode;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Length.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Length;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileMode"
.end annotation


# static fields
.field static final MODES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 258
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "each"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "all"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Length$FileMode;->MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 266
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Length$FileMode;->MODES:[Ljava/lang/String;

    return-object v0
.end method
