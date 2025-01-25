.class public Lcom/termux/app/ActivityCollector;
.super Ljava/lang/Object;
.source "ActivityCollector.java"


# static fields
.field public static activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/termux/app/ActivityCollector;->activities:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addActivity(Landroid/app/Activity;)V
    .registers 2

    .line 20
    sget-object v0, Lcom/termux/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static finishOneActivity(Ljava/lang/String;)V
    .registers 4

    .line 36
    sget-object v0, Lcom/termux/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 39
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 41
    sget-object v2, Lcom/termux/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 44
    :cond_2c
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_30
    return-void
.end method

.method public static removeActivity(Landroid/app/Activity;)V
    .registers 2

    .line 28
    sget-object v0, Lcom/termux/app/ActivityCollector;->activities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
