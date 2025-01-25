.class public Landroidj/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidj/support/annotation/RestrictTo;
    value = {
        .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-nez p0, :cond_1a

    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_18

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_5

    :cond_18
    move v0, v1

    goto :goto_5

    :cond_1a
    if-nez p1, :cond_2e

    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2c

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_5

    :cond_2c
    move v0, v1

    goto :goto_5

    :cond_2e
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_4a

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_5

    :cond_4a
    move v0, v1

    goto :goto_5
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11

    const v3, 0x7fffffff

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v0, 0x1

    if-nez p0, :cond_22

    move v5, v7

    :goto_9
    if-nez p1, :cond_2a

    move v8, v7

    :goto_c
    if-nez p0, :cond_32

    move v4, v7

    :goto_f
    if-nez p1, :cond_3a

    move v6, v7

    :goto_12
    if-eq v5, v7, :cond_16

    if-ne v4, v7, :cond_42

    :cond_16
    move v4, v3

    move v5, v1

    :goto_18
    if-eq v8, v7, :cond_1c

    if-ne v6, v7, :cond_49

    :cond_1c
    move v2, v1

    :goto_1d
    if-gt v5, v2, :cond_50

    if-gt v2, v4, :cond_50

    :cond_21
    :goto_21
    return v0

    :cond_22
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v5, v2

    goto :goto_9

    :cond_2a
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v8, v2

    goto :goto_c

    :cond_32
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v4, v2

    goto :goto_f

    :cond_3a
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v6, v2

    goto :goto_12

    :cond_42
    mul-int/2addr v5, v4

    add-int v2, v5, v4

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    goto :goto_18

    :cond_49
    mul-int v2, v6, v8

    add-int v3, v2, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    :cond_50
    if-gt v5, v3, :cond_54

    if-le v3, v4, :cond_21

    :cond_54
    move v0, v1

    goto :goto_21
.end method
