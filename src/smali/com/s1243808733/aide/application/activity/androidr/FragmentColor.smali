.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;
.super Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
.source "FragmentColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;,
        Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;,
        Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 36
    const-class v0, Landroid/R$color;

    return-object v0
.end method

.method public onCreateAdapter(Landroid/os/Bundle;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;->getClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 23
    aget-object v3, v2, v0

    .line 24
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 26
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 27
    new-instance v5, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    invoke-direct {v5, v4, v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;-><init>(Ljava/lang/String;I)V

    .line 28
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method
