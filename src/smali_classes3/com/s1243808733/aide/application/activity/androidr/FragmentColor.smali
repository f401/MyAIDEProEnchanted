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
    .registers 1

    .line 127
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 36
    :try_start_0
    const-string v0, "android.R$color"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateAdapter(Landroid/os/Bundle;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;->getClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 22
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-lt v1, v0, :cond_0

    .line 30
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;Landroid/content/Context;Ljava/util/List;)V

    return-object v0

    .line 23
    :cond_0
    aget-object v4, v3, v1

    .line 24
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 26
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 27
    new-instance v4, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    invoke-direct {v4, v5, v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;-><init>(Ljava/lang/String;I)V

    .line 28
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
