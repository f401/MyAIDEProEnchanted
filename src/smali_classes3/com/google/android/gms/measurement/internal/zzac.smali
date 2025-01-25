.class final Lcom/google/android/gms/measurement/internal/zzac;
.super Ljava/lang/Object;


# instance fields
.field final name:Ljava/lang/String;

.field final zzahv:J

.field final zzahw:J

.field final zzahx:J

.field final zzahy:J

.field final zzahz:Ljava/lang/Long;

.field final zzaia:Ljava/lang/Long;

.field final zzaib:Ljava/lang/Long;

.field final zzaic:Ljava/lang/Boolean;

.field final zztt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .registers 27

    move-object v0, p0

    move-wide v1, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmp-long v11, v1, v9

    if-ltz v11, :cond_19

    const/4 v11, 0x1

    goto :goto_1a

    :cond_19
    const/4 v11, 0x0

    :goto_1a
    invoke-static {v11}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    cmp-long v11, v3, v9

    if-ltz v11, :cond_23

    const/4 v11, 0x1

    goto :goto_24

    :cond_23
    const/4 v11, 0x0

    :goto_24
    invoke-static {v11}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    cmp-long v11, v5, v9

    if-ltz v11, :cond_2c

    const/4 v7, 0x1

    :cond_2c
    invoke-static {v7}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    move-object v7, p1

    iput-object v7, v0, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    move-object v7, p2

    iput-object v7, v0, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    move-wide/from16 v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    iput-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method final zza(JJ)Lcom/google/android/gms/measurement/internal/zzac;
    .registers 22

    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    move-object/from16 v1, v16

    move-wide/from16 v10, p1

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v16
.end method

.method final zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzac;
    .registers 21

    move-object/from16 v0, p0

    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    move-object/from16 v16, v1

    goto :goto_10

    :cond_e
    move-object/from16 v16, p3

    :goto_10
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    move-object v2, v1

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method final zzae(J)Lcom/google/android/gms/measurement/internal/zzac;
    .registers 20

    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    move-object/from16 v1, v16

    move-wide/from16 v8, p1

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v16
.end method
