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
    .registers 22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    const-wide/16 v4, 0x0

    cmp-long v2, p5, v4

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    const-wide/16 v4, 0x0

    cmp-long v2, p9, v4

    if-ltz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method final zza(JJ)Lcom/google/android/gms/measurement/internal/zzac;
    .registers 24

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    move-wide/from16 v12, p1

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v3
.end method

.method final zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzac;
    .registers 22

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p3, 0x0

    move-object/from16 v17, p3

    :goto_0
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahx:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v3

    :cond_0
    move-object/from16 v17, p3

    goto :goto_0
.end method

.method final zzae(J)Lcom/google/android/gms/measurement/internal/zzac;
    .registers 22

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zztt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahv:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahw:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahy:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzahz:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaia:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaib:Ljava/lang/Long;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzaic:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    move-wide/from16 v10, p1

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v3
.end method
