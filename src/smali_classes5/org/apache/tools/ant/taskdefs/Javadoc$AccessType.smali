.class public Lorg/apache/tools/ant/taskdefs/Javadoc$AccessType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessType"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 359
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 367
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "public"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "private"

    aput-object v2, v0, v1

    return-object v0
.end method
