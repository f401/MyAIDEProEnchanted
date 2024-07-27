.class public final Lcom/google/android/gms/internal/ads/hf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/i;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Z

.field private final VH:Lcom/google/android/gms/internal/ads/zzacp;

.field private final Zo:I

.field private final gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/Date;

.field private final tp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Z

.field private final v5:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/internal/ads/zzacp;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hf;->j6:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/hf;->DW:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hf;->FH:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hf;->v5:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/hf;->Hw:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/hf;->Zo:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/hf;->VH:Lcom/google/android/gms/internal/ads/zzacp;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/hf;->u7:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->gn:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->tp:Ljava/util/Map;

    if-eqz p8, :cond_3

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "custom:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ":"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v2, "true"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hf;->tp:Ljava/util/Map;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, "false"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hf;->tp:Ljava/util/Map;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hf;->gn:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hf;->Zo:I

    return v0
.end method

.method public final EQ()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->FH:Ljava/util/Set;

    return-object v0
.end method

.method public final FH()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hf;->u7:Z

    return v0
.end method

.method public final Hw()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->j6:Ljava/util/Date;

    return-object v0
.end method

.method public final VH()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->gn:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Zo()Lcom/google/android/gms/ads/formats/b;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->VH:Lcom/google/android/gms/internal/ads/zzacp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/formats/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/b$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->VH:Lcom/google/android/gms/internal/ads/zzacp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzacp;->DW:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/b$a;->DW(Z)Lcom/google/android/gms/ads/formats/b$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->VH:Lcom/google/android/gms/internal/ads/zzacp;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzacp;->FH:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/b$a;->DW(I)Lcom/google/android/gms/ads/formats/b$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->VH:Lcom/google/android/gms/internal/ads/zzacp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzacp;->Hw:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/b$a;->j6(Z)Lcom/google/android/gms/ads/formats/b$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->VH:Lcom/google/android/gms/internal/ads/zzacp;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzacp;->j6:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzacp;->v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/b$a;->j6(I)Lcom/google/android/gms/ads/formats/b$a;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf;->VH:Lcom/google/android/gms/internal/ads/zzacp;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzacp;->j6:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzacp;->Zo:Lcom/google/android/gms/internal/ads/zzzw;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/google/android/gms/ads/i;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/i;-><init>(Lcom/google/android/gms/internal/ads/zzzw;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/b$a;->j6(Lcom/google/android/gms/ads/i;)Lcom/google/android/gms/ads/formats/b$a;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b$a;->j6()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->v5:Landroid/location/Location;

    return-object v0
.end method

.method public final gn()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/hf;->DW:I

    return v0
.end method

.method public final j6()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->tp:Ljava/util/Map;

    return-object v0
.end method

.method public final tp()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->gn:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->gn:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u7()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->gn:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hf;->Hw:Z

    return v0
.end method

.method public final we()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->gn:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf;->gn:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
