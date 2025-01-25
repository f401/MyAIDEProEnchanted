.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar$CMPVersion;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "EjbJar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/ejb/EjbJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMPVersion"
.end annotation


# static fields
.field public static final CMP1_0:Ljava/lang/String; = "1.0"

.field public static final CMP2_0:Ljava/lang/String; = "2.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1.0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2.0"

    aput-object v2, v0, v1

    return-object v0
.end method
