.class public Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# static fields
.field public static final DECREMENT_OPER:I = 0x1

.field public static final DELETE_OPER:I = 0x3

.field public static final EQUALS_OPER:I = 0x2

.field public static final INCREMENT_OPER:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 589
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public static toOperation(Ljava/lang/String;)I
    .registers 2

    .line 613
    const-string v0, "+"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 614
    const/4 v0, 0x0

    .line 622
    :goto_9
    return v0

    .line 616
    :cond_a
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 617
    const/4 v0, 0x1

    goto :goto_9

    .line 619
    :cond_14
    const-string v0, "del"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 620
    const/4 v0, 0x3

    goto :goto_9

    .line 622
    :cond_1e
    const/4 v0, 0x2

    goto :goto_9
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 604
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "del"

    aput-object v2, v0, v1

    return-object v0
.end method
