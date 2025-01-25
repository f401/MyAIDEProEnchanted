.class public final Lcom/google/android/gms/ads/internal/ma;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method private static j6(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    const-string v2, "null"

    goto :goto_3a

    :cond_2b
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_36

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/ma;->j6(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    :cond_36
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzwf;)[Ljava/lang/Object;
    .registers 8

    new-instance p4, Ljava/util/HashSet;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "formatString"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_26

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    const-string p0, "networkType"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    const-string p0, "birthday"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    const-string p0, "extras"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_57

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/ma;->j6(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    const-string p0, "gender"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    const-string p0, "keywords"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7f

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    if-eqz p0, :cond_7c

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    :cond_7c
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    :goto_7f
    const-string p0, "isTestDevice"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    iget-boolean p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    const-string p0, "tagForChildDirectedTreatment"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a1

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    const-string p0, "manualImpressionsEnabled"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b2

    iget-boolean p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->gn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    const-string p0, "publisherProvidedId"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bf

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bf
    const-string p0, "location"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d6

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    if-eqz p0, :cond_d3

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    :cond_d3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d6
    :goto_d6
    const-string p0, "contentUrl"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e3

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    const-string p0, "networkExtras"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f4

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/ma;->j6(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f4
    const-string p0, "customTargeting"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_105

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/ma;->j6(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_105
    const-string p0, "categoryExclusions"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11c

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    if-eqz p0, :cond_119

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    :cond_119
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11c
    :goto_11c
    const-string p0, "requestAgent"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_129

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_129
    const-string p0, "requestPackage"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_136

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_136
    const-string p0, "isDesignedForFamilies"

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_147

    iget-boolean p0, p1, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_147
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
