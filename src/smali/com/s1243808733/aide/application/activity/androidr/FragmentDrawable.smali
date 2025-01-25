.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;
.super Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
.source "FragmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;,
        Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;,
        Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 35
    const-class v0, Landroid/R$drawable;

    return-object v0
.end method

.method public onCreateAdapter(Landroid/os/Bundle;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;->getClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 23
    aget-object v2, v0, v1

    .line 24
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 26
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 27
    new-instance v4, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    invoke-direct {v4, v3, v2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;-><init>(Ljava/lang/String;I)V

    .line 28
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 30
    :cond_2b
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method
