.class final Lcom/google/android/gms/measurement/internal/zzm;
.super Lcom/google/android/gms/measurement/internal/zzfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfn;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    return-void
.end method

.method private final zza(DLcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/Z;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(JLcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/Z;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/X;Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/ia;J)Ljava/lang/Boolean;
    .registers 14

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/X;->gn:Lcom/google/android/gms/internal/measurement/Z;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/measurement/internal/zzm;->zza(JLcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;

    move-result-object p4

    if-nez p4, :cond_11

    return-object v3

    :cond_11
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_18

    return-object v2

    :cond_18
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iget-object p5, p1, Lcom/google/android/gms/internal/measurement/X;->Zo:[Lcom/google/android/gms/internal/measurement/Y;

    array-length v0, p5

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v0, :cond_4b

    aget-object v5, p5, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "null or empty param name in filter. event"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_43
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_4b
    new-instance p5, Labcd/k;

    invoke-direct {p5}, Labcd/k;-><init>()V

    array-length v0, p3

    const/4 v4, 0x0

    :goto_52
    if-ge v4, v0, :cond_95

    aget-object v5, p3, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-interface {p4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-eqz v6, :cond_68

    :goto_62
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-interface {p5, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    :cond_68
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    if-eqz v6, :cond_6d

    goto :goto_62

    :cond_6d
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    if-eqz v6, :cond_72

    goto :goto_62

    :cond_72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    iget-object p4, v5, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Unknown value for param. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_92
    :goto_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_95
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/X;->Zo:[Lcom/google/android/gms/internal/measurement/Y;

    array-length p3, p1

    :goto_98
    const/4 p4, 0x1

    if-ge v1, p3, :cond_1ea

    aget-object v0, p1, v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Event has empty param name. event"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_c3
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_105

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-nez v7, :cond_ed

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No number filter for long param. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_ed
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {p0, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzm;->zza(JLcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_fc

    return-object v3

    :cond_fc
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr p4, v0

    xor-int/2addr p4, v4

    if-eqz p4, :cond_170

    return-object v2

    :cond_105
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_143

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-nez v7, :cond_12b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No number filter for double param. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_12b
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {p0, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzm;->zza(DLcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_13a

    return-object v3

    :cond_13a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr p4, v0

    xor-int/2addr p4, v4

    if-eqz p4, :cond_170

    return-object v2

    :cond_143
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1b0

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    if-eqz v7, :cond_152

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ba;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_164

    :cond_152
    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-eqz v7, :cond_192

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcs(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_174

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_164
    if-nez v0, :cond_167

    return-object v3

    :cond_167
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr p4, v0

    xor-int/2addr p4, v4

    if-eqz p4, :cond_170

    return-object v2

    :cond_170
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_98

    :cond_174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Invalid param value for number filter. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No filter for String param. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_1b0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    if-nez v6, :cond_1d0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Missing param for filter. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1d0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Unknown param type. event, param"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_1ea
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/aa;Lcom/google/android/gms/internal/measurement/na;)Ljava/lang/Boolean;
    .registers 7

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/aa;->Zo:Lcom/google/android/gms/internal/measurement/Y;

    const/4 v0, 0x0

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Missing property filter. property"

    :goto_19
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/na;->VH:Ljava/lang/Long;

    if-eqz v2, :cond_51

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-nez v3, :cond_42

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "No number filter for long property. property"

    goto :goto_19

    :cond_42
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {p0, v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzm;->zza(JLcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_4c
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_51
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/na;->u7:Ljava/lang/Double;

    if-eqz v2, :cond_79

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-nez v3, :cond_6e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "No number filter for double property. property"

    goto :goto_19

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {p0, v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzm;->zza(DLcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4c

    :cond_79
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/na;->Zo:Ljava/lang/String;

    if-eqz v2, :cond_cb

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    if-nez v3, :cond_c6

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    if-nez v3, :cond_9d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "No string or number filter defined. property"

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c5

    :cond_9d
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/na;->Zo:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4c

    :cond_ac
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/na;->Zo:Ljava/lang/String;

    const-string v2, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {p1, v2, v1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_c5
    return-object v0

    :cond_c6
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ba;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4c

    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "User property has no value, property"

    goto/16 :goto_19
.end method

.method private static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_10

    if-eqz p5, :cond_f

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    :cond_f
    return-object v0

    :cond_10
    if-nez p4, :cond_13

    return-object v0

    :cond_13
    if-nez p3, :cond_1f

    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    goto :goto_1f

    :cond_19
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_1f
    :goto_1f
    packed-switch p2, :pswitch_data_66

    return-object v0

    :pswitch_23  #0x6
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2c  #0x5
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_27

    :pswitch_31  #0x4
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_27

    :pswitch_36  #0x3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_27

    :pswitch_3b  #0x2
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_27

    :pswitch_40  #0x1
    if-eqz p3, :cond_44

    const/4 p2, 0x0

    goto :goto_46

    :cond_44
    const/16 p2, 0x42

    :goto_46
    :try_start_46
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1
    :try_end_52
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_46 .. :try_end_52} :catch_57

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_57
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p1, p2, p6}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_40  #00000001
        :pswitch_3b  #00000002
        :pswitch_36  #00000003
        :pswitch_31  #00000004
        :pswitch_2c  #00000005
        :pswitch_23  #00000006
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/Z;)Ljava/lang/Boolean;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcs(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/Z;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    return-object v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ba;)Ljava/lang/Boolean;
    .registers 13

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    if-eqz v1, :cond_82

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_82

    :cond_13
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_24

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    if-eqz v1, :cond_23

    array-length v1, v1

    if-nez v1, :cond_29

    :cond_23
    return-object v0

    :cond_24
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    if-nez v1, :cond_29

    return-object v0

    :cond_29
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v6, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v6, 0x0

    :goto_3e
    if-nez v6, :cond_4e

    if-eq v5, v4, :cond_4e

    if-ne v5, v2, :cond_45

    goto :goto_4e

    :cond_45
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_50

    :cond_4e
    :goto_4e
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    :goto_50
    move-object v7, v1

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    if-nez p2, :cond_57

    move-object v8, v0

    goto :goto_76

    :cond_57
    if-eqz v6, :cond_5f

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v8, p2

    goto :goto_76

    :cond_5f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_65
    if-ge v3, v2, :cond_75

    aget-object v8, p2, v3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_75
    move-object v8, v1

    :goto_76
    if-ne v5, v4, :cond_7a

    move-object v9, v7

    goto :goto_7b

    :cond_7a
    move-object v9, v0

    :goto_7b
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_82
    :goto_82
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/Z;D)Ljava/lang/Boolean;
    .registers 14

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Z;->FH:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_f3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_f3

    :cond_10
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Z;->FH:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_22

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Z;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Z;->VH:Ljava/lang/String;

    if-nez v0, :cond_27

    :cond_21
    return-object v1

    :cond_22
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Z;->v5:Ljava/lang/String;

    if-nez v0, :cond_27

    return-object v1

    :cond_27
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Z;->FH:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Z;->FH:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_59

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Z;->Zo:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Z;->VH:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_58

    :cond_46
    :try_start_46
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/Z;->Zo:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/Z;->VH:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_54} :catch_57

    move-object p1, v3

    move-object v3, v1

    goto :goto_6b

    :catch_57
    move-exception p0

    :cond_58
    :goto_58
    return-object v1

    :cond_59
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/Z;->v5:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    return-object v1

    :cond_62
    :try_start_62
    new-instance v3, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/Z;->v5:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_69} :catch_f2

    move-object p1, v1

    move-object v4, p1

    :goto_6b
    if-ne v0, v2, :cond_70

    if-nez p1, :cond_72

    return-object v1

    :cond_70
    if-eqz v3, :cond_f3

    :cond_72
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_e6

    const/4 v8, 0x2

    if-eq v0, v8, :cond_da

    const/4 v9, 0x3

    if-eq v0, v9, :cond_92

    if-eq v0, v2, :cond_80

    goto :goto_f3

    :cond_80
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v5, :cond_8d

    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v7, :cond_8d

    const/4 v6, 0x1

    :cond_8d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_92
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_ce

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v7, :cond_c9

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v5, :cond_c9

    const/4 v6, 0x1

    :cond_c9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_ce
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_d5

    const/4 v6, 0x1

    :cond_d5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_da
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v7, :cond_e1

    const/4 v6, 0x1

    :cond_e1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_e6
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v5, :cond_ed

    const/4 v6, 0x1

    :cond_ed
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_f2
    move-exception p0

    :cond_f3
    :goto_f3
    return-object v1
.end method

.method private static zza(Ljava/util/Map;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;IJ)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_22

    :cond_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method private static zzb(Ljava/util/Map;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;IJ)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-wide/16 p0, 0x3e8

    div-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static zzb(Ljava/util/Map;)[Lcom/google/android/gms/internal/measurement/ga;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)[",
            "Lcom/google/android/gms/internal/measurement/ga;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/ga;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v4, Lcom/google/android/gms/internal/measurement/ga;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/ga;-><init>()V

    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/ga;->Hw:Ljava/lang/Integer;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/ga;->v5:Ljava/lang/Long;

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_33
    return-object v0
.end method


# virtual methods
.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/ha;[Lcom/google/android/gms/internal/measurement/na;)[Lcom/google/android/gms/internal/measurement/fa;
    .registers 72

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Labcd/k;

    invoke-direct {v12}, Labcd/k;-><init>()V

    new-instance v10, Labcd/k;

    invoke-direct {v10}, Labcd/k;-><init>()V

    new-instance v9, Labcd/k;

    invoke-direct {v9}, Labcd/k;-><init>()V

    new-instance v8, Labcd/k;

    invoke-direct {v8}, Labcd/k;-><init>()V

    new-instance v6, Labcd/k;

    invoke-direct {v6}, Labcd/k;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzq;->zzbb(Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzt;->zzbp(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v0, :cond_17d

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/la;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    move-object/from16 v20, v0

    if-eqz v23, :cond_b2

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    move-object/from16 v21, v1

    if-eqz v3, :cond_a6

    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/la;->v5:[Lcom/google/android/gms/internal/measurement/ga;

    move-object/from16 v22, v2

    if-nez v1, :cond_8a

    goto :goto_a8

    :cond_8a
    array-length v2, v1

    move-object/from16 v24, v5

    const/4 v5, 0x0

    :goto_8e
    if-ge v5, v2, :cond_aa

    move/from16 v25, v2

    aget-object v2, v1, v5

    move-object/from16 v26, v1

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/ga;->Hw:Ljava/lang/Integer;

    if-eqz v1, :cond_9f

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ga;->v5:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v25

    move-object/from16 v1, v26

    goto :goto_8e

    :cond_a6
    move-object/from16 v22, v2

    :goto_a8
    move-object/from16 v24, v5

    :cond_aa
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    :cond_b2
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v5

    const/4 v0, 0x0

    :goto_b9
    if-nez v4, :cond_d4

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    :cond_d4
    move-object/from16 v2, v22

    :goto_d6
    const/4 v1, 0x0

    :goto_d7
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/la;->FH:[J

    move-object/from16 v22, v8

    array-length v8, v5

    shl-int/lit8 v8, v8, 0x6

    if-ge v1, v8, :cond_128

    invoke-static {v5, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([JI)Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v25, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v26, v10

    const-string v10, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v5, v10, v8, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/la;->Hw:[J

    invoke-static {v5, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza([JI)Z

    move-result v5

    if-eqz v5, :cond_113

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v5, 0x1

    goto :goto_114

    :cond_10f
    move-object/from16 v25, v9

    move-object/from16 v26, v10

    :cond_113
    const/4 v5, 0x0

    :goto_114
    if-eqz v0, :cond_11f

    if-nez v5, :cond_11f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, v22

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    goto :goto_d7

    :cond_128
    move-object/from16 v25, v9

    move-object/from16 v26, v10

    new-instance v1, Lcom/google/android/gms/internal/measurement/fa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/fa;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    new-instance v3, Lcom/google/android/gms/internal/measurement/la;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/la;-><init>()V

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/BitSet;)[J

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/la;->Hw:[J

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/BitSet;)[J

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/internal/measurement/la;->FH:[J

    if-eqz v23, :cond_16e

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzm;->zzb(Ljava/util/Map;)[Lcom/google/android/gms/internal/measurement/ga;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/la;->v5:[Lcom/google/android/gms/internal/measurement/ga;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Labcd/k;

    invoke-direct {v1}, Labcd/k;-><init>()V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16e
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v8, v22

    move-object/from16 v5, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    const/4 v4, 0x1

    goto/16 :goto_48

    :cond_17d
    move-object/from16 v24, v5

    move-object/from16 v22, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    const-string v27, "null"

    const-string v8, "Filter definition"

    const-string v4, "Skipping failed audience ID"

    if-eqz v13, :cond_7bb

    new-instance v5, Labcd/k;

    invoke-direct {v5}, Labcd/k;-><init>()V

    array-length v3, v13

    const-wide/16 v28, 0x0

    move-wide/from16 v20, v28

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_19a
    if-ge v2, v3, :cond_7bb

    aget-object v14, v13, v2

    iget-object v9, v14, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    iget-object v10, v14, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    move/from16 v30, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    move/from16 v31, v3

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzaki:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v2

    const-wide/16 v32, 0x1

    if-eqz v2, :cond_386

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v2, "_eid"

    invoke-static {v14, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_1c4

    const/16 v34, 0x1

    goto :goto_1c6

    :cond_1c4
    const/16 v34, 0x0

    :goto_1c6
    move-object/from16 v35, v4

    if-eqz v34, :cond_1d4

    const-string v4, "_ep"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d4

    const/4 v4, 0x1

    goto :goto_1d5

    :cond_1d4
    const/4 v4, 0x0

    :goto_1d5
    if-eqz v4, :cond_339

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v4, "_en"

    invoke-static {v14, v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_204

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v4, "Extra parameter without an event name. eventId"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v36, v0

    move-object/from16 v41, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v24

    move-object/from16 v42, v35

    const/16 v24, 0x1

    goto/16 :goto_328

    :cond_204
    if-eqz v0, :cond_21d

    if-eqz v1, :cond_21d

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    cmp-long v4, v36, v38

    if-eqz v4, :cond_215

    goto :goto_21d

    :cond_215
    :goto_215
    move-object v4, v0

    move-wide/from16 v66, v20

    move-object/from16 v20, v1

    move-wide/from16 v0, v66

    goto :goto_243

    :cond_21d
    :goto_21d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    invoke-virtual {v4, v15, v3}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v36, v0

    if-eqz v4, :cond_311

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_22f

    goto/16 :goto_311

    :cond_22f
    check-cast v0, Lcom/google/android/gms/internal/measurement/ha;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_215

    :goto_243
    sub-long v36, v0, v32

    cmp-long v0, v36, v28

    if-gtz v0, :cond_294

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Clearing complex main event info. appId"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_25d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "delete from main_event_params where app_id=?"
    :try_end_263
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25d .. :try_end_263} :catch_274

    move-object/from16 v18, v4

    const/4 v3, 0x1

    :try_start_266
    new-array v4, v3, [Ljava/lang/String;
    :try_end_268
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_266 .. :try_end_268} :catch_272

    const/16 v19, 0x0

    :try_start_26a
    aput-object v15, v4, v19

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_26f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26a .. :try_end_26f} :catch_270

    goto :goto_287

    :catch_270
    move-exception v0

    goto :goto_27a

    :catch_272
    move-exception v0

    goto :goto_278

    :catch_274
    move-exception v0

    move-object/from16 v18, v4

    const/4 v3, 0x1

    :goto_278
    const/16 v19, 0x0

    :goto_27a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Error clearing complex main event"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_287
    move-object/from16 v41, v5

    move-object/from16 v43, v6

    move-object/from16 v1, v18

    move-object/from16 v40, v24

    move-object/from16 v42, v35

    const/16 v24, 0x1

    goto :goto_2b4

    :cond_294
    move-object/from16 v18, v4

    const/4 v4, 0x1

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v41, v5

    move-object/from16 v17, v18

    move-object/from16 v40, v24

    move-object/from16 v42, v35

    const/16 v24, 0x1

    move-wide/from16 v4, v36

    move-object/from16 v43, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/ha;)Z

    move-object/from16 v1, v17

    :goto_2b4
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v2, v0

    array-length v3, v10

    add-int/2addr v2, v3

    new-array v3, v2, [Lcom/google/android/gms/internal/measurement/ia;

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2be
    move-object/from16 v17, v1

    if-ge v5, v4, :cond_2dc

    aget-object v1, v0, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    if-nez v0, :cond_2d5

    aput-object v1, v3, v6

    add-int/lit8 v6, v6, 0x1

    :cond_2d5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, v18

    goto :goto_2be

    :cond_2dc
    if-lez v6, :cond_2fc

    array-length v0, v10

    const/4 v1, 0x0

    :goto_2e0
    if-ge v1, v0, :cond_2eb

    aget-object v4, v10, v1

    aput-object v4, v3, v6

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e0

    :cond_2eb
    if-ne v6, v2, :cond_2ef

    move-object v10, v3

    goto :goto_2f6

    :cond_2ef
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/ia;

    move-object v10, v0

    :goto_2f6
    move-object/from16 v4, v17

    move-object/from16 v3, v20

    goto/16 :goto_398

    :cond_2fc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-wide/from16 v20, v36

    goto/16 :goto_394

    :cond_311
    :goto_311
    move-object/from16 v41, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v24

    move-object/from16 v42, v35

    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {v0, v2, v9, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_328
    move-object/from16 v44, v8

    move-object v7, v11

    move-object/from16 v49, v12

    move-object/from16 v45, v25

    move-object/from16 v47, v26

    move-object/from16 v0, v36

    move-object/from16 v65, v42

    move-object/from16 v12, p3

    goto/16 :goto_79d

    :cond_339
    move-object/from16 v36, v0

    move-object/from16 v41, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v24

    move-object/from16 v42, v35

    const/16 v24, 0x1

    if-eqz v34, :cond_392

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_epc"

    invoke-static {v14, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_357

    goto :goto_358

    :cond_357
    move-object v0, v1

    :goto_358
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v0, v17, v28

    if-gtz v0, :cond_371

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Complex event with zero extra param count. eventName"

    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_37e

    :cond_371
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    move-object/from16 v2, p1

    move-object v0, v3

    move-wide/from16 v4, v17

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/ha;)Z

    :goto_37e
    move-object v5, v9

    move-object/from16 v35, v10

    move-object/from16 v34, v14

    move-wide/from16 v36, v17

    goto :goto_39e

    :cond_386
    move-object/from16 v36, v0

    move-object/from16 v42, v4

    move-object/from16 v41, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v24

    const/16 v24, 0x1

    :cond_392
    move-object/from16 v0, v36

    :goto_394
    move-object v4, v0

    move-object v3, v1

    move-wide/from16 v36, v20

    :goto_398
    move-object v0, v3

    move-object/from16 v34, v4

    move-object v5, v9

    move-object/from16 v35, v10

    :goto_39e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    iget-object v2, v14, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    if-nez v1, :cond_3fe

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v10, v14, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    const-wide/16 v2, 0x1

    const-wide/16 v17, 0x1

    iget-object v4, v14, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v32, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v21, 0x0

    const/16 v38, 0x0

    move-object/from16 v44, v8

    move-object/from16 v9, v22

    move-object v8, v1

    move-object/from16 v46, v9

    move-object/from16 v45, v25

    move-object/from16 v9, p1

    move-object/from16 v47, v26

    move-object/from16 v48, v11

    move-object/from16 v49, v12

    move-wide v11, v2

    move-object/from16 v3, p3

    move-object v2, v14

    move-wide/from16 v13, v17

    move-wide/from16 v15, v19

    move-wide/from16 v17, v32

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v22, v38

    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_43d

    :cond_3fe
    move-object/from16 v3, p3

    move-object/from16 v44, v8

    move-object/from16 v48, v11

    move-object/from16 v49, v12

    move-object v2, v14

    move-object/from16 v46, v22

    move-object/from16 v45, v25

    move-object/from16 v47, v26

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    add-long v53, v9, v32

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    add-long v55, v9, v32

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    move-object/from16 v50, v4

    move-object/from16 v51, v6

    move-object/from16 v52, v8

    move-wide/from16 v57, v9

    move-wide/from16 v59, v11

    move-object/from16 v61, v13

    move-object/from16 v62, v14

    move-object/from16 v63, v15

    move-object/from16 v64, v1

    invoke-direct/range {v50 .. v64}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v1, v4

    :goto_43d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    move-object/from16 v10, v41

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_465

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v1

    move-object/from16 v11, p1

    invoke-virtual {v1, v11, v5}, Lcom/google/android/gms/measurement/internal/zzt;->zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_461

    new-instance v1, Labcd/k;

    invoke-direct {v1}, Labcd/k;-><init>()V

    :cond_461
    invoke-interface {v10, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_467

    :cond_465
    move-object/from16 v11, p1

    :goto_467
    move-object v12, v1

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_470
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v15, v48

    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v6, v42

    invoke-virtual {v1, v6, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v48, v15

    goto :goto_470

    :cond_4a0
    move-object/from16 v6, v42

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v4, v49

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/fa;

    move-object/from16 v16, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v41, v10

    move-object/from16 v10, v47

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v18, v13

    move-object/from16 v13, v45

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    move-object/from16 v19, v0

    if-eqz v23, :cond_4ed

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v7, v46

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v11, v43

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_4f4

    :cond_4ed
    move-object/from16 v11, v43

    move-object/from16 v7, v46

    const/4 v0, 0x0

    const/16 v20, 0x0

    :goto_4f4
    if-nez v1, :cond_556

    new-instance v1, Lcom/google/android/gms/internal/measurement/fa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/fa;-><init>()V

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v48, v15

    move-object/from16 v15, v40

    iput-object v15, v1, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v17, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v23, :cond_544

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    move-object/from16 v19, v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Labcd/k;

    invoke-direct {v1}, Labcd/k;-><init>()V

    move-object/from16 v20, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_548

    :cond_544
    move-object/from16 v19, v1

    move-object/from16 v0, v21

    :goto_548
    move-object/from16 v43, v11

    move-object/from16 v40, v15

    move-object/from16 v1, v17

    move-object/from16 v15, v20

    move-object v11, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v19

    goto :goto_566

    :cond_556
    move-object/from16 v21, v0

    move-object/from16 v48, v15

    move-object/from16 v43, v11

    move-object/from16 v1, v17

    move-object/from16 v0, v19

    move-object/from16 v15, v20

    move-object/from16 v11, v21

    move-object/from16 v17, v2

    :goto_566
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_574
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_772

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/X;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    move-object/from16 v20, v12

    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzas;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_5c6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v49, v4

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    move-object/from16 v42, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    move-object/from16 v22, v7

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/X;->v5:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Evaluating filter. audience, filter, event"

    invoke-virtual {v3, v7, v12, v4, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/X;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v44

    invoke-virtual {v3, v7, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5ce

    :cond_5c6
    move-object/from16 v49, v4

    move-object/from16 v42, v6

    move-object/from16 v22, v7

    move-object/from16 v7, v44

    :goto_5ce
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    if-eqz v3, :cond_733

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v12, 0x100

    if-le v3, v12, :cond_5dc

    goto/16 :goto_733

    :cond_5dc
    const-string v6, "Event filter result"

    if-eqz v23, :cond_6b1

    if-eqz v2, :cond_5ef

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/X;->u7:Ljava/lang/Boolean;

    if-eqz v3, :cond_5ef

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5ef

    const/16 v21, 0x1

    goto :goto_5f1

    :cond_5ef
    const/16 v21, 0x0

    :goto_5f1
    if-eqz v2, :cond_600

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/X;->tp:Ljava/lang/Boolean;

    if-eqz v3, :cond_600

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_600

    const/16 v25, 0x1

    goto :goto_602

    :cond_600
    const/16 v25, 0x0

    :goto_602
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_633

    if-nez v21, :cond_633

    if-nez v25, :cond_633

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    const-string v6, "Event filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID"

    invoke-virtual {v3, v6, v4, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, p3

    move-object/from16 v44, v7

    move-object/from16 v12, v20

    move-object/from16 v7, v22

    move-object/from16 v6, v42

    move-object/from16 v4, v49

    goto/16 :goto_574

    :cond_633
    move-object v4, v1

    move-object/from16 v1, p0

    move-object/from16 v3, v17

    move-object/from16 v17, v2

    move-object/from16 v12, p3

    move-object/from16 v44, v7

    move-object v7, v3

    move-object v3, v5

    move-object/from16 v47, v10

    move-object/from16 v45, v13

    move-object/from16 v13, v49

    move-object v10, v4

    move-object/from16 v4, v35

    move-object/from16 v26, v5

    move-object/from16 v65, v42

    move-object v13, v6

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Lcom/google/android/gms/internal/measurement/X;Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/ia;J)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    if-nez v1, :cond_660

    move-object/from16 v3, v27

    goto :goto_661

    :cond_660
    move-object v3, v1

    :goto_661
    invoke-virtual {v2, v13, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_670

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v5, v48

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6aa

    :cond_670
    move-object/from16 v6, v17

    move-object/from16 v5, v48

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6aa

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    if-nez v21, :cond_690

    if-eqz v25, :cond_6aa

    :cond_690
    iget-object v1, v7, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    if-eqz v1, :cond_6aa

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-eqz v25, :cond_6a6

    invoke-static {v11, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzm;->zzb(Ljava/util/Map;IJ)V

    goto :goto_6aa

    :cond_6a6
    invoke-static {v15, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/util/Map;IJ)V

    goto :goto_6e3

    :cond_6aa
    :goto_6aa
    move-object/from16 v17, v7

    move-object/from16 v21, v11

    move-object v7, v5

    goto/16 :goto_75c

    :cond_6b1
    move-object/from16 v12, p3

    move-object/from16 v26, v5

    move-object/from16 v44, v7

    move-object/from16 v47, v10

    move-object/from16 v45, v13

    move-object/from16 v7, v17

    move-object/from16 v65, v42

    move-object/from16 v5, v48

    move-object v10, v1

    move-object v13, v6

    move-object v6, v2

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6ed

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    const-string v4, "Event filter already evaluated true. audience ID, filter ID"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6e3
    move-object/from16 v48, v5

    move-object/from16 v17, v7

    move-object v1, v10

    move-object v3, v12

    move-object/from16 v12, v20

    goto/16 :goto_764

    :cond_6ed
    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, v26

    move-object/from16 v4, v35

    move-object/from16 v17, v7

    move-object/from16 v21, v11

    move-object v7, v5

    move-object v11, v6

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Lcom/google/android/gms/internal/measurement/X;Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/ia;J)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    if-nez v1, :cond_70c

    move-object/from16 v3, v27

    goto :goto_70d

    :cond_70c
    move-object v3, v1

    :goto_70d
    invoke-virtual {v2, v13, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_71a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_75c

    :cond_71a
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_75c

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_75c

    :cond_733
    :goto_733
    move-object/from16 v12, p3

    move-object/from16 v26, v5

    move-object/from16 v44, v7

    move-object/from16 v47, v10

    move-object/from16 v21, v11

    move-object/from16 v45, v13

    move-object/from16 v65, v42

    move-object/from16 v7, v48

    move-object v10, v1

    move-object v11, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75c
    :goto_75c
    move-object/from16 v48, v7

    move-object v1, v10

    move-object v3, v12

    move-object/from16 v12, v20

    move-object/from16 v11, v21

    :goto_764
    move-object/from16 v7, v22

    move-object/from16 v5, v26

    move-object/from16 v13, v45

    move-object/from16 v10, v47

    move-object/from16 v4, v49

    move-object/from16 v6, v65

    goto/16 :goto_574

    :cond_772
    move-object/from16 v22, v7

    move-object/from16 v7, p0

    move-object/from16 v11, p1

    move-object/from16 v49, v4

    move-object/from16 v42, v6

    move-object/from16 v47, v10

    move-object/from16 v45, v13

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v13, v18

    move-object/from16 v46, v22

    move-object/from16 v10, v41

    goto/16 :goto_470

    :cond_78c
    move-object/from16 v16, v0

    move-object v12, v3

    move-object/from16 v41, v10

    move-object/from16 v65, v42

    move-object/from16 v22, v46

    move-object/from16 v7, v48

    move-object/from16 v1, v16

    move-object/from16 v0, v34

    move-wide/from16 v20, v36

    :goto_79d
    add-int/lit8 v2, v30, 0x1

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object v11, v7

    move-object v14, v12

    move/from16 v3, v31

    move-object/from16 v24, v40

    move-object/from16 v5, v41

    move-object/from16 v6, v43

    move-object/from16 v8, v44

    move-object/from16 v25, v45

    move-object/from16 v26, v47

    move-object/from16 v12, v49

    move-object/from16 v4, v65

    move-object/from16 v7, p0

    goto/16 :goto_19a

    :cond_7bb
    move-object/from16 v65, v4

    move-object/from16 v43, v6

    move-object/from16 v44, v8

    move-object v7, v11

    move-object/from16 v49, v12

    move-object v12, v14

    move-object/from16 v40, v24

    move-object/from16 v45, v25

    move-object/from16 v47, v26

    const/16 v24, 0x1

    if-eqz v12, :cond_aee

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    array-length v1, v12

    const/4 v2, 0x0

    :goto_7d6
    if-ge v2, v1, :cond_aee

    aget-object v3, v12, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_7ff

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v8, v43

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzt;->zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_7f9

    new-instance v4, Labcd/k;

    invoke-direct {v4}, Labcd/k;-><init>()V

    :cond_7f9
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_803

    :cond_7ff
    move-object/from16 v6, p1

    move-object/from16 v8, v43

    :goto_803
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_80b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_adc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_837

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v11, v65

    invoke-virtual {v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_80b

    :cond_837
    move-object/from16 v11, v65

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v13, v49

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/fa;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, v47

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/BitSet;

    move-object/from16 p2, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v16, v1

    move-object/from16 v1, v45

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    move-object/from16 v17, v0

    if-eqz v23, :cond_880

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v18, v5

    move-object/from16 v5, v22

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_887

    :cond_880
    move-object/from16 v18, v5

    move-object/from16 v5, v22

    const/4 v0, 0x0

    const/16 v19, 0x0

    :goto_887
    if-nez v10, :cond_8e8

    new-instance v10, Lcom/google/android/gms/internal/measurement/fa;

    invoke-direct {v10}, Lcom/google/android/gms/internal/measurement/fa;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, v40

    iput-object v14, v10, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v20, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v17, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v23, :cond_8d6

    new-instance v10, Labcd/k;

    invoke-direct {v10}, Labcd/k;-><init>()V

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    move-object/from16 v22, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v10

    goto :goto_8dc

    :cond_8d6
    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v0, v20

    :goto_8dc
    move-object v10, v0

    move-object/from16 v42, v11

    move-object/from16 v40, v14

    move-object/from16 v14, v17

    move-object/from16 v5, v19

    move-object/from16 v0, v21

    goto :goto_8f4

    :cond_8e8
    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v42, v11

    move-object/from16 v0, v17

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    :goto_8f4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_902
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ac6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v4

    move-object/from16 v4, v17

    check-cast v4, Lcom/google/android/gms/internal/measurement/aa;

    move-object/from16 v17, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;->isLoggable(I)Z

    move-result v11

    if-eqz v11, :cond_956

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    move-object/from16 v43, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    move-object/from16 v45, v1

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/aa;->v5:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "Evaluating filter. audience, filter, property"

    invoke-virtual {v11, v8, v12, v6, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/aa;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, v44

    invoke-virtual {v1, v8, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_95c

    :cond_956
    move-object/from16 v45, v1

    move-object/from16 v43, v8

    move-object/from16 v8, v44

    :goto_95c
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    if-eqz v1, :cond_a8e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0x100

    if-le v1, v6, :cond_96a

    goto/16 :goto_a8e

    :cond_96a
    const-string v1, "Property filter result"

    if-eqz v23, :cond_a21

    if-eqz v4, :cond_97c

    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/aa;->VH:Ljava/lang/Boolean;

    if-eqz v11, :cond_97c

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_97c

    const/4 v11, 0x1

    goto :goto_97d

    :cond_97c
    const/4 v11, 0x0

    :goto_97d
    if-eqz v4, :cond_98b

    iget-object v12, v4, Lcom/google/android/gms/internal/measurement/aa;->gn:Ljava/lang/Boolean;

    if-eqz v12, :cond_98b

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_98b

    const/4 v12, 0x1

    goto :goto_98c

    :cond_98b
    const/4 v12, 0x0

    :goto_98c
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_9bf

    if-nez v11, :cond_9bf

    if-nez v12, :cond_9bf

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    const-string v11, "Property filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID"

    invoke-virtual {v1, v11, v6, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v6, p1

    move-object/from16 v12, p3

    move-object/from16 v44, v8

    move-object/from16 v11, v17

    move-object/from16 v4, v19

    move-object/from16 v8, v43

    move-object/from16 v1, v45

    goto/16 :goto_902

    :cond_9bf
    move-object/from16 v6, p0

    move-object/from16 v44, v8

    move-object/from16 v8, v22

    invoke-direct {v6, v4, v3}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Lcom/google/android/gms/internal/measurement/aa;Lcom/google/android/gms/internal/measurement/na;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v21

    move-object/from16 v22, v8

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v8

    move-object/from16 v49, v13

    if-nez v20, :cond_9da

    move-object/from16 v13, v27

    goto :goto_9dc

    :cond_9da
    move-object/from16 v13, v20

    :goto_9dc
    invoke-virtual {v8, v1, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v20, :cond_9e3

    goto/16 :goto_a5e

    :cond_9e3
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v14, v1, v8}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a7e

    if-nez v11, :cond_a03

    if-eqz v12, :cond_a7e

    :cond_a03
    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/na;->Hw:Ljava/lang/Long;

    if-eqz v1, :cond_a7e

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/na;->Hw:Ljava/lang/Long;

    if-eqz v12, :cond_a19

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v1, v11, v12}, Lcom/google/android/gms/measurement/internal/zzm;->zzb(Ljava/util/Map;IJ)V

    goto :goto_a7e

    :cond_a19
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v5, v1, v11, v12}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Ljava/util/Map;IJ)V

    goto :goto_a7e

    :cond_a21
    move-object/from16 v6, p0

    move-object/from16 v44, v8

    move-object/from16 v49, v13

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v14, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_a47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    const-string v11, "Property filter already evaluated true. audience ID, filter ID"

    invoke-virtual {v1, v11, v8, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a7e

    :cond_a47
    invoke-direct {v6, v4, v3}, Lcom/google/android/gms/measurement/internal/zzm;->zza(Lcom/google/android/gms/internal/measurement/aa;Lcom/google/android/gms/internal/measurement/na;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v11

    if-nez v8, :cond_a58

    move-object/from16 v12, v27

    goto :goto_a59

    :cond_a58
    move-object v12, v8

    :goto_a59
    invoke-virtual {v11, v1, v12}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v8, :cond_a66

    :goto_a5e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a7e

    :cond_a66
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a7e

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/util/BitSet;->set(I)V

    :cond_a7e
    :goto_a7e
    move-object/from16 v6, p1

    move-object/from16 v12, p3

    move-object/from16 v11, v17

    move-object/from16 v4, v19

    move-object/from16 v8, v43

    move-object/from16 v1, v45

    move-object/from16 v13, v49

    goto/16 :goto_902

    :cond_a8e
    :goto_a8e
    move-object/from16 v6, p0

    move-object/from16 v44, v8

    move-object/from16 v49, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid property filter ID. appId, id"

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v12, p3

    move-object/from16 v47, v15

    move/from16 v1, v16

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v65, v42

    move-object/from16 v8, v43

    goto/16 :goto_80b

    :cond_ac6
    move-object/from16 v6, p0

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v12, p3

    move-object/from16 v45, v1

    move-object/from16 v49, v13

    move-object/from16 v47, v15

    move/from16 v1, v16

    move-object/from16 v5, v18

    move-object/from16 v65, v42

    goto/16 :goto_80b

    :cond_adc
    move-object/from16 v6, p0

    move-object/from16 p2, v0

    move/from16 v16, v1

    move-object/from16 v43, v8

    move-object/from16 v15, v47

    move-object/from16 v42, v65

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p3

    goto/16 :goto_7d6

    :cond_aee
    move-object/from16 v6, p0

    move-object/from16 v15, v47

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Lcom/google/android/gms/internal/measurement/fa;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_b01
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c9c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v49

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/fa;

    if-nez v4, :cond_b2e

    new-instance v4, Lcom/google/android/gms/internal/measurement/fa;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/fa;-><init>()V

    :cond_b2e
    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v4, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    new-instance v8, Lcom/google/android/gms/internal/measurement/la;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/la;-><init>()V

    iput-object v8, v4, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/BitSet;)[J

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/internal/measurement/la;->Hw:[J

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, v45

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/BitSet;)[J

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/internal/measurement/la;->FH:[J

    if-eqz v23, :cond_bfd

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v11, v22

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzm;->zzb(Ljava/util/Map;)[Lcom/google/android/gms/internal/measurement/ga;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/internal/measurement/la;->v5:[Lcom/google/android/gms/internal/measurement/ga;

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v12, v43

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const/4 v13, 0x0

    if-nez v9, :cond_b91

    new-array v9, v13, [Lcom/google/android/gms/internal/measurement/ma;

    move-object/from16 p2, v2

    move-object/from16 v49, v5

    goto :goto_bfa

    :cond_b91
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v14

    new-array v14, v14, [Lcom/google/android/gms/internal/measurement/ma;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    :goto_ba1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_bf5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 p2, v2

    new-instance v2, Lcom/google/android/gms/internal/measurement/ma;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/ma;-><init>()V

    iput-object v13, v2, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-eqz v13, :cond_be9

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v49, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v18, 0x0

    :goto_bd1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_be6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    aput-wide v19, v5, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_bd1

    :cond_be6
    iput-object v5, v2, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    goto :goto_beb

    :cond_be9
    move-object/from16 v49, v5

    :goto_beb
    aput-object v2, v14, v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v2, p2

    move-object/from16 v5, v49

    const/4 v13, 0x0

    goto :goto_ba1

    :cond_bf5
    move-object/from16 p2, v2

    move-object/from16 v49, v5

    move-object v9, v14

    :goto_bfa
    iput-object v9, v8, Lcom/google/android/gms/internal/measurement/la;->Zo:[Lcom/google/android/gms/internal/measurement/ma;

    goto :goto_c05

    :cond_bfd
    move-object/from16 p2, v2

    move-object/from16 v49, v5

    move-object/from16 v11, v22

    move-object/from16 v12, v43

    :goto_c05
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v2

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_c17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v5

    new-array v8, v5, [B
    :try_end_c1d
    .catch Ljava/io/IOException; {:try_start_c17 .. :try_end_c1d} :catch_c7a

    const/4 v9, 0x0

    :try_start_c1e
    invoke-static {v8, v9, v5}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/la;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/qd;->j6()V
    :try_end_c28
    .catch Ljava/io/IOException; {:try_start_c1e .. :try_end_c28} :catch_c75

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    move-object/from16 v13, p1

    invoke-virtual {v4, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "audience_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_c42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v5, "audience_filter_values"
    :try_end_c48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c42 .. :try_end_c48} :catch_c68

    const/4 v8, 0x5

    const/4 v14, 0x0

    :try_start_c4a
    invoke-virtual {v0, v5, v14, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v16, -0x1

    cmp-long v0, v4, v16

    if-nez v0, :cond_c90

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v4, "Failed to insert filter results (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c4a .. :try_end_c65} :catch_c66

    goto :goto_c90

    :catch_c66
    move-exception v0

    goto :goto_c6a

    :catch_c68
    move-exception v0

    const/4 v14, 0x0

    :goto_c6a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v4, "Error storing filter results. appId"

    goto :goto_c89

    :catch_c75
    move-exception v0

    move-object/from16 v13, p1

    :goto_c78
    const/4 v14, 0x0

    goto :goto_c7f

    :catch_c7a
    move-exception v0

    move-object/from16 v13, p1

    const/4 v9, 0x0

    goto :goto_c78

    :goto_c7f
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v4, "Configuration loss. Failed to serialize filter results. appId"

    :goto_c89
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c90
    :goto_c90
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p2

    move-object/from16 v45, v10

    move-object/from16 v22, v11

    move-object/from16 v43, v12

    goto/16 :goto_b01

    :cond_c9c
    move-object/from16 v13, p1

    goto/16 :goto_b01

    :cond_ca0
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/fa;

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
