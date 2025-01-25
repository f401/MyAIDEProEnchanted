.class public final Landroidx/core/content/MimeTypeFilter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_3

    aget-object v1, p1, v2

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object v0, v1

    goto :goto_3

    :cond_1f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_3

    aget-object v1, p0, v2

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object v0, v1

    goto :goto_3

    :cond_1f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array v0, v0, [Ljava/lang/String;

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, p0

    :goto_12
    if-ge v0, v3, :cond_28

    aget-object v4, p0, v0

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_5
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    if-ne v2, v3, :cond_4c

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    array-length v2, p0

    if-eq v2, v3, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const-string v2, "*"

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    aget-object v2, p1, v0

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_2e
    const-string v2, "*"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    aget-object v2, p1, v1

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_42
    move v0, v1

    goto :goto_19

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Type or subtype empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Must be type/subtype."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
