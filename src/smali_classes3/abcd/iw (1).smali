.class public Labcd/iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/iw$a;
    }
.end annotation


# static fields
.field private static DW:Labcd/iw$a;

.field private static j6:Labcd/iw$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/iw$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/iw$a;-><init>(Labcd/hw;)V

    sput-object v0, Labcd/iw;->j6:Labcd/iw$a;

    new-instance v0, Labcd/iw$a;

    invoke-direct {v0, v1}, Labcd/iw$a;-><init>(Labcd/hw;)V

    sput-object v0, Labcd/iw;->DW:Labcd/iw$a;

    return-void
.end method

.method private static DW(J)J
    .registers 3

    sget-object v0, Labcd/iw;->j6:Labcd/iw$a;

    invoke-virtual {v0, p0, p1}, Labcd/iw$a;->DW(J)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Labcd/iw;->j6:Labcd/iw$a;

    :goto_a
    invoke-virtual {v0, p0, p1}, Labcd/iw$a;->j6(J)J

    move-result-wide p0

    return-wide p0

    :cond_f
    sget-object v0, Labcd/iw;->DW:Labcd/iw$a;

    goto :goto_a
.end method

.method private static j6()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    return-object v0
.end method

.method public static j6(Labcd/lw;JJ)V
    .registers 23

    move-wide/from16 v15, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") Event recording start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Output"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Labcd/_v;

    move-object/from16 v0, v17

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Labcd/Xv;

    move-object v3, v4

    invoke-direct {v4}, Labcd/Xv;-><init>()V

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p1

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getBuildVariantName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppVersionCode()I

    move-result v7

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-static {v10}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Labcd/iw;->j6()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    invoke-direct/range {v0 .. v16}, Labcd/_v;-><init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;JLjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static/range {v17 .. v17}, Labcd/Yv;->j6(Labcd/_v;)V

    return-void
.end method

.method public static j6(Labcd/lw;JLcom/appfour/backbone/api/objects/EventData;)V
    .registers 35

    move-wide/from16 v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Output"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p3

    check-cast v5, Labcd/Xv;

    iget-boolean v2, v5, Labcd/Xv;->FH:Z

    invoke-static {v0, v1, v2}, Labcd/qw;->j6(JZ)Labcd/qw$a;

    move-result-object v12

    iget-boolean v2, v12, Labcd/qw$a;->DW:Z

    if-eqz v2, :cond_9e

    invoke-static {}, Labcd/Wv;->j6()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_46
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Wv$a;

    iget-object v4, v3, Labcd/Wv$a;->DW:Ljava/lang/String;

    invoke-static {v4}, Labcd/ow;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-wide v6, v3, Labcd/Wv$a;->Hw:J

    cmp-long v4, v6, v0

    if-gez v4, :cond_46

    new-instance v4, Labcd/_v;

    move-object v13, v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Labcd/Wv$a;->DW:Ljava/lang/String;

    iget-object v6, v3, Labcd/Wv$a;->FH:Labcd/Xv;

    move-object/from16 v16, v6

    invoke-static/range {p1 .. p2}, Labcd/iw;->DW(J)J

    move-result-wide v17

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getBuildVariantName()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppVersionCode()I

    move-result v20

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppId()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v22

    iget-object v6, v12, Labcd/qw$a;->j6:Ljava/lang/String;

    move-object/from16 v23, v6

    invoke-static {}, Labcd/iw;->j6()Ljava/lang/String;

    move-result-object v24

    iget-object v6, v3, Labcd/Wv$a;->j6:Ljava/lang/String;

    move-object/from16 v25, v6

    iget-wide v6, v3, Labcd/Wv$a;->Hw:J

    move-wide/from16 v26, v6

    const-wide/16 v28, -0x1

    invoke-direct/range {v13 .. v29}, Labcd/_v;-><init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;JLjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v4}, Labcd/Yv;->j6(Labcd/_v;)V

    goto :goto_46

    :cond_9e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v15

    move-object v3, v15

    new-instance v19, Labcd/_v;

    move-object/from16 v2, v19

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Labcd/iw;->DW(J)J

    move-result-wide v6

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getBuildVariantName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppVersionCode()I

    move-result v9

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v12, Labcd/qw$a;->j6:Ljava/lang/String;

    invoke-static {}, Labcd/iw;->j6()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const-wide/16 v16, -0x1

    move-object/from16 v30, v15

    move-wide/from16 v15, v16

    const-wide/16 v17, -0x1

    move-object/from16 p3, v5

    invoke-direct/range {v2 .. v18}, Labcd/_v;-><init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;JLjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static/range {v19 .. v19}, Labcd/Yv;->j6(Labcd/_v;)V

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, v30

    invoke-static {v4, v2, v3, v0, v1}, Labcd/Wv;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;J)V

    return-void
.end method

.method public static j6(Labcd/lw;JLjava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") Event error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Output"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static j6(J)Z
    .registers 2

    invoke-static {p0, p1}, Labcd/Yv;->j6(J)Z

    move-result p0

    return p0
.end method
