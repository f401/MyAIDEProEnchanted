.class public Lcom/google/firebase/components/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/firebase/components/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/firebase/components/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/components/m<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/a;->j6:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/components/a;->DW:Lcom/google/firebase/components/m;

    return-void
.end method

.method private static DW(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/e;",
            ">;"
        }
    .end annotation

    const-string v0, "Could not instantiate %s"

    const-string v1, "Could not instantiate %s."

    const-string v2, "ComponentDiscovery"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1d
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/google/firebase/components/e;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3c

    const-string v7, "Class %s is not an instance of %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    const-string v9, "com.google.firebase.components.ComponentRegistrar"

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_3c
    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/components/e;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_4d} :catch_76
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_4d} :catch_6c
    .catch Ljava/lang/InstantiationException; {:try_start_1d .. :try_end_4d} :catch_62
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_4d} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_4d} :catch_4e

    goto :goto_f

    :catch_4e
    move-exception v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_81

    :catch_58
    move-exception v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_81

    :catch_62
    move-exception v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_81

    :catch_6c
    move-exception v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_81

    :catch_76
    move-exception v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    const-string v4, "Class %s is not an found."

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_81
    invoke-static {v2, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_85
    return-object v3
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/firebase/components/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/firebase/components/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/a;

    new-instance v1, Lcom/google/firebase/components/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/components/l;-><init>(B)V

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/components/a;-><init>(Ljava/lang/Object;Lcom/google/firebase/components/m;)V

    return-object v0
.end method

.method static j6(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b<",
            "*>;>;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/b;

    new-instance v3, Lcom/google/firebase/components/o;

    invoke-direct {v3, v2}, Lcom/google/firebase/components/o;-><init>(Lcom/google/firebase/components/b;)V

    invoke-virtual {v2}, Lcom/google/firebase/components/b;->j6()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_39

    goto :goto_26

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const-string v1, "Multiple components provide %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/o;

    invoke-virtual {v2}, Lcom/google/firebase/components/o;->DW()Lcom/google/firebase/components/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/components/b;->DW()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6b
    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/components/f;

    invoke-virtual {v4}, Lcom/google/firebase/components/f;->FH()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-virtual {v4}, Lcom/google/firebase/components/f;->j6()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/components/o;

    if-eqz v4, :cond_6b

    invoke-virtual {v2, v4}, Lcom/google/firebase/components/o;->j6(Lcom/google/firebase/components/o;)V

    invoke-virtual {v4, v2}, Lcom/google/firebase/components/o;->DW(Lcom/google/firebase/components/o;)V

    goto :goto_6b

    :cond_90
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/google/firebase/components/a;->j6(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_a2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_dd

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/o;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/firebase/components/o;->DW()Lcom/google/firebase/components/b;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/firebase/components/o;->j6()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c4
    :goto_c4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/o;

    invoke-virtual {v5, v3}, Lcom/google/firebase/components/o;->FH(Lcom/google/firebase/components/o;)V

    invoke-virtual {v5}, Lcom/google/firebase/components/o;->FH()Z

    move-result v6

    if-eqz v6, :cond_c4

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    :cond_dd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_eb

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v2

    :cond_eb
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f4
    :goto_f4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/o;

    invoke-virtual {v1}, Lcom/google/firebase/components/o;->FH()Z

    move-result v2

    if-nez v2, :cond_f4

    invoke-virtual {v1}, Lcom/google/firebase/components/o;->Hw()Z

    move-result v2

    if-nez v2, :cond_f4

    invoke-virtual {v1}, Lcom/google/firebase/components/o;->DW()Lcom/google/firebase/components/b;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f4

    :cond_114
    new-instance v0, Lcom/google/firebase/components/g;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/g;-><init>(Ljava/util/List;)V

    goto :goto_11b

    :goto_11a
    throw v0

    :goto_11b
    goto :goto_11a
.end method

.method private static j6(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/o;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/o;

    invoke-virtual {v1}, Lcom/google/firebase/components/o;->FH()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public j6()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/a;->DW:Lcom/google/firebase/components/m;

    iget-object v1, p0, Lcom/google/firebase/components/a;->j6:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/firebase/components/m;->j6(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/components/a;->DW(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
