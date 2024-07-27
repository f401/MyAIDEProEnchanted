.class public final Lcom/google/android/gms/measurement/internal/zzfu;
.super Lcom/google/android/gms/measurement/internal/zzfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfn;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;
    .registers 7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/Y;)V
    .registers 10

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complement"

    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/Y;->Zo:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "param_name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/Y;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, p2, 0x1

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/Y;->Hw:Lcom/google/android/gms/internal/measurement/ba;

    if-eqz v2, :cond_4

    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "string_filter"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/ba;->FH:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN_MATCH_TYPE"

    :goto_1
    const-string v3, "match_type"

    invoke-static {p1, v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "expression"

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/ba;->Hw:Ljava/lang/String;

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "case_sensitive"

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/ba;->v5:Ljava/lang/Boolean;

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "expression_list {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ba;->Zo:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    add-int/lit8 v5, v1, 0x2

    invoke-static {p1, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "IN_LIST"

    goto :goto_1

    :pswitch_1
    const-string v0, "EXACT"

    goto :goto_1

    :pswitch_2
    const-string v0, "PARTIAL"

    goto :goto_1

    :pswitch_3
    const-string v0, "ENDS_WITH"

    goto :goto_1

    :pswitch_4
    const-string v0, "BEGINS_WITH"

    goto :goto_1

    :pswitch_5
    const-string v0, "REGEXP"

    goto :goto_1

    :cond_2
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "number_filter"

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/Y;->v5:Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/Z;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/Z;)V
    .registers 7

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/Z;->FH:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const-string v0, "UNKNOWN_COMPARISON_TYPE"

    :goto_1
    const-string v1, "comparison_type"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "match_as_float"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/Z;->Hw:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/Z;->v5:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "min_comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/Z;->Zo:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "max_comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/Z;->VH:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, "BETWEEN"

    goto :goto_1

    :cond_3
    const-string v0, "EQUAL"

    goto :goto_1

    :cond_4
    const-string v0, "GREATER_THAN"

    goto :goto_1

    :cond_5
    const-string v0, "LESS_THAN"

    goto :goto_1
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/la;Ljava/lang/String;)V
    .registers 19

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/la;->Hw:[J

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "results: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/la;->Hw:[J

    array-length v5, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-wide v6, v4, v2

    if-eqz v3, :cond_1

    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/la;->FH:[J

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "status: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/la;->FH:[J

    array-length v5, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v2, v5, :cond_5

    aget-wide v6, v4, v2

    if-eqz v3, :cond_4

    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzbb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/la;->v5:[Lcom/google/android/gms/internal/measurement/ga;

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "dynamic_filter_timestamps: {"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/la;->v5:[Lcom/google/android/gms/internal/measurement/ga;

    array-length v5, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v6, v4, v2

    if-eqz v3, :cond_7

    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/ga;->Hw:Ljava/lang/Integer;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/ga;->v5:Ljava/lang/Long;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/la;->Zo:[Lcom/google/android/gms/internal/measurement/ma;

    if-eqz v2, :cond_e

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "sequence_filter_timestamps: {"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/la;->Zo:[Lcom/google/android/gms/internal/measurement/ma;

    array-length v7, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v2, v7, :cond_d

    aget-object v4, v6, v2

    if-eqz v3, :cond_a

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ma;->Hw:Ljava/lang/Integer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/ma;->v5:[J

    array-length v9, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_5
    if-ge v4, v9, :cond_c

    aget-wide v10, v8, v4

    if-eqz v5, :cond_b

    const-string v12, ", "

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    const-string v4, "]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static zza([JI)Z
    .registers 8

    const/4 v0, 0x0

    array-length v1, p0

    shl-int/lit8 v1, v1, 0x6

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v2, 0x1

    rem-int/lit8 v1, p1, 0x40

    shl-long/2addr v2, v1

    div-int/lit8 v1, p1, 0x40

    aget-wide v4, p0, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static zza(Ljava/util/BitSet;)[J
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    div-int/lit8 v3, v0, 0x40

    new-array v4, v3, [J

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v2

    move v0, v1

    :goto_1
    const/16 v5, 0x40

    if-ge v0, v5, :cond_1

    shl-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-wide v6, v4, v2

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v4, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method static zza([Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/ia;
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, p0, v0

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Double;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/ia;

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/ia;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/ia;-><init>()V

    iput-object p1, v1, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    check-cast p2, Ljava/lang/Long;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    :cond_5
    :goto_2
    array-length v2, p0

    aput-object v1, v0, v2

    move-object p0, v0

    goto :goto_1

    :cond_6
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_7

    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    goto :goto_2

    :cond_7
    instance-of v2, p2, Ljava/lang/Double;

    if-eqz v2, :cond_5

    check-cast p2, Ljava/lang/Double;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    goto :goto_2
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/internal/measurement/ha;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static zzcs(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x136

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    array-length v3, p1

    invoke-virtual {v2, p1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/a$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v3, "Failed to load parcelable from buffer"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/X;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nevent_filter {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/X;->Hw:Ljava/lang/Integer;

    const-string v3, "filter_id"

    invoke-static {v1, v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/X;->v5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_count_filter"

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/X;->gn:Lcom/google/android/gms/internal/measurement/Z;

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/Z;)V

    const-string v2, "  filters {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/X;->Zo:[Lcom/google/android/gms/internal/measurement/Y;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    const/4 v4, 0x2

    aget-object v5, v2, v0

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/Y;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/aa;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/aa;->Hw:Ljava/lang/Integer;

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "property_name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/aa;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/aa;->Zo:Lcom/google/android/gms/internal/measurement/Y;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/Y;)V

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/ia;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) event param value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/na;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/na;->Zo:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/na;->VH:Ljava/lang/Long;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/na;->u7:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/na;->Zo:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/na;->VH:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/na;->u7:Ljava/lang/Double;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) user attribute value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/ja;)[B
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/qd;->j6([BII)Lcom/google/android/gms/internal/measurement/qd;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ja;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/qd;->j6()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize batch"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final zza([B)[B
    .registers 8

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to ungzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/ja;)Ljava/lang/String;
    .registers 20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nbatch {\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/ja;->FH:[Lcom/google/android/gms/internal/measurement/ka;

    if-eqz v10, :cond_b

    array-length v13, v10

    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-ge v12, v13, :cond_b

    aget-object v14, v10, v12

    if-eqz v14, :cond_a

    if-eqz v14, :cond_a

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "bundle {\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const-string v4, "protocol_version"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->Hw:Ljava/lang/Integer;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "platform"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->we:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "gmp_version"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->Mr:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "uploading_gmp_version"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->U2:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "config_version"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->cn:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "gmp_app_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->BT:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "admob_app_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->ef:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "app_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "app_version"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->j3:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "app_version_major"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->nw:Ljava/lang/Integer;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "firebase_instance_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->ei:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "dev_cert_hash"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->er:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "app_store"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->XL:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "upload_timestamp_millis"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->VH:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "start_timestamp_millis"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->gn:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "end_timestamp_millis"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->u7:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "previous_bundle_start_timestamp_millis"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->tp:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "previous_bundle_end_timestamp_millis"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->EQ:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "app_instance_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->rN:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "resettable_device_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->a8:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "device_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->ro:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "ds_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->cb:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "limited_ad_tracking"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->lg:Ljava/lang/Boolean;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "os_version"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->J0:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "device_model"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->J8:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "user_default_language"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->Ws:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "time_zone_offset_minutes"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->QX:Ljava/lang/Integer;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "bundle_sequential_index"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->yS:Ljava/lang/Integer;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "service_upload"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->vy:Ljava/lang/Boolean;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v4, "health_monitor"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->gW:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v14, Lcom/google/android/gms/internal/measurement/ka;->sh:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const-string v4, "android_id"

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/ka;->sh:Ljava/lang/Long;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v14, Lcom/google/android/gms/internal/measurement/ka;->sG:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    const-string v5, "retry_counter"

    invoke-static {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v4, v14, Lcom/google/android/gms/internal/measurement/ka;->Zo:[Lcom/google/android/gms/internal/measurement/na;

    const-string v8, "string_value"

    const-string v9, "name"

    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    if-eqz v6, :cond_2

    const/4 v7, 0x2

    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v7, "user_property {\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    const-string v11, "set_timestamp_millis"

    iget-object v15, v6, Lcom/google/android/gms/internal/measurement/na;->Hw:Ljava/lang/Long;

    invoke-static {v3, v7, v11, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x2

    const-string v11, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v15

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/na;->v5:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v7, v11, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x2

    const-string v11, "string_value"

    iget-object v15, v6, Lcom/google/android/gms/internal/measurement/na;->Zo:Ljava/lang/String;

    invoke-static {v3, v7, v11, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x2

    const-string v11, "int_value"

    iget-object v15, v6, Lcom/google/android/gms/internal/measurement/na;->VH:Ljava/lang/Long;

    invoke-static {v3, v7, v11, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x2

    const-string v11, "double_value"

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/na;->u7:Ljava/lang/Double;

    invoke-static {v3, v7, v11, v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v6, "}\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v15, v14, Lcom/google/android/gms/internal/measurement/ka;->P8:[Lcom/google/android/gms/internal/measurement/fa;

    iget-object v7, v14, Lcom/google/android/gms/internal/measurement/ka;->aM:Ljava/lang/String;

    if-eqz v15, :cond_5

    array-length v0, v15

    move/from16 v16, v0

    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    aget-object v17, v15, v11

    if-eqz v17, :cond_4

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "audience_membership {\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const-string v4, "audience_id"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/fa;->Hw:Ljava/lang/Integer;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x2

    const-string v4, "new_audience"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/fa;->VH:Ljava/lang/Boolean;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x2

    const-string v5, "current_data"

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/fa;->v5:Lcom/google/android/gms/internal/measurement/la;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/la;Ljava/lang/String;)V

    const/4 v4, 0x2

    const-string v5, "previous_data"

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/fa;->Zo:Lcom/google/android/gms/internal/measurement/la;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/la;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "}\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_2

    :cond_5
    move-object v2, v8

    move-object v4, v9

    move-object v5, v10

    const/4 v7, 0x2

    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/ka;->v5:[Lcom/google/android/gms/internal/measurement/ha;

    if-eqz v6, :cond_9

    array-length v10, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_9

    aget-object v9, v6, v8

    if-eqz v9, :cond_8

    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v11, "event {\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v11

    iget-object v14, v9, Lcom/google/android/gms/internal/measurement/ha;->v5:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v7, v4, v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v11, "timestamp_millis"

    iget-object v14, v9, Lcom/google/android/gms/internal/measurement/ha;->Zo:Ljava/lang/Long;

    invoke-static {v3, v7, v11, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v11, "previous_timestamp_millis"

    iget-object v14, v9, Lcom/google/android/gms/internal/measurement/ha;->VH:Ljava/lang/Long;

    invoke-static {v3, v7, v11, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v11, "count"

    iget-object v14, v9, Lcom/google/android/gms/internal/measurement/ha;->gn:Ljava/lang/Integer;

    invoke-static {v3, v7, v11, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/ha;->Hw:[Lcom/google/android/gms/internal/measurement/ia;

    if-eqz v11, :cond_7

    array-length v14, v11

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v14, :cond_7

    aget-object v7, v11, v9

    if-eqz v7, :cond_6

    const/4 v15, 0x3

    invoke-static {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v15, "param {\n"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v16

    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/ia;->Hw:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v15, v4, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v15, 0x3

    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/ia;->v5:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v3, v15, v2, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v15, 0x3

    const-string v16, "int_value"

    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/ia;->Zo:Ljava/lang/Long;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v3, v15, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v15, 0x3

    const-string v16, "double_value"

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/ia;->gn:Ljava/lang/Double;

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x3

    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v7, "}\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x2

    goto :goto_4

    :cond_7
    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v9, "}\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "}\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v5

    :cond_a
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_0

    :cond_b
    const-string v2, "}\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method final zzb(JJ)Z
    .registers 10

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final zzb([B)[B
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to gzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfy;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzjr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjs()Lcom/google/android/gms/measurement/internal/zzm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjs()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjt()Lcom/google/android/gms/measurement/internal/zzt;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method final zzmi()[I
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzm(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzakg:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "measurement.id."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Too many experiment IDs. Number of IDs"

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v7, "Experiment ID NumberFormatException"

    invoke-virtual {v1, v7, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    move v4, v3

    :goto_2
    if-ge v2, v6, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method
