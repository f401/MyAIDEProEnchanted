.class public Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final DATE_TYPE:I = 0x1

.field public static final INTEGER_TYPE:I = 0x0

.field public static final STRING_TYPE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 629
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public static toType(Ljava/lang/String;)I
    .registers 2

    .line 651
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    .line 654
    :cond_0
    const-string v0, "date"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    const/4 v0, 0x1

    goto :goto_0

    .line 657
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 642
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "string"

    aput-object v2, v0, v1

    return-object v0
.end method
