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

    const/4 v1, 0x0

    new-instance v0, Labcd/iw$a;

    invoke-direct {v0, v1}, Labcd/iw$a;-><init>(Labcd/hw;)V

    sput-object v0, Labcd/iw;->j6:Labcd/iw$a;

    new-instance v0, Labcd/iw$a;

    invoke-direct {v0, v1}, Labcd/iw$a;-><init>(Labcd/hw;)V

    sput-object v0, Labcd/iw;->DW:Labcd/iw$a;

    return-void
.end method

.method private static DW(J)J
    .registers 4

    sget-object v0, Labcd/iw;->j6:Labcd/iw$a;

    invoke-virtual {v0, p0, p1}, Labcd/iw$a;->DW(J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/iw;->j6:Labcd/iw$a;

    invoke-virtual {v0, p0, p1}, Labcd/iw$a;->j6(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Labcd/iw;->DW:Labcd/iw$a;

    invoke-virtual {v0, p0, p1}, Labcd/iw$a;->j6(J)J

    move-result-wide v0

    goto :goto_0
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

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static j6(Labcd/lw;JJ)V
    .registers 26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") Event recording start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Output"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Labcd/_v;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Labcd/Xv;

    invoke-direct {v6}, Labcd/Xv;-><init>()V

    const-wide/16 v8, 0x3e8

    mul-long v7, v8, p1

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getBuildVariantName()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppVersionCode()I

    move-result v10

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Labcd/iw;->j6()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    move-wide/from16 v18, p3

    invoke-direct/range {v3 .. v19}, Labcd/_v;-><init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;JLjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v3}, Labcd/Yv;->j6(Labcd/_v;)V

    return-void
.end method

.method public static j6(Labcd/lw;JLcom/appfour/backbone/api/objects/EventData;)V
    .registers 29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Output"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p3, Labcd/Xv;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Labcd/Xv;->FH:Z

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v4}, Labcd/qw;->j6(JZ)Labcd/qw$a;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v4, v0, Labcd/qw$a;->DW:Z

    if-eqz v4, :cond_1

    invoke-static {}, Labcd/Wv;->j6()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Wv$a;

    iget-object v5, v4, Labcd/Wv$a;->DW:Ljava/lang/String;

    invoke-static {v5}, Labcd/ow;->j6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v6, v4, Labcd/Wv$a;->Hw:J

    cmp-long v5, v6, p1

    if-gez v5, :cond_0

    new-instance v5, Labcd/_v;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Labcd/Wv$a;->DW:Ljava/lang/String;

    iget-object v8, v4, Labcd/Wv$a;->FH:Labcd/Xv;

    invoke-static/range {p1 .. p2}, Labcd/iw;->DW(J)J

    move-result-wide v9

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getBuildVariantName()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppVersionCode()I

    move-result v12

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v22

    iget-object v15, v0, Labcd/qw$a;->j6:Ljava/lang/String;

    invoke-static {}, Labcd/iw;->j6()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v4, Labcd/Wv$a;->j6:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-wide v0, v4, Labcd/Wv$a;->Hw:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    invoke-direct/range {v5 .. v21}, Labcd/_v;-><init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;JLjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v5}, Labcd/Yv;->j6(Labcd/_v;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v4}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Labcd/_v;

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p2}, Labcd/iw;->DW(J)J

    move-result-wide v9

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getBuildVariantName()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppVersionCode()I

    move-result v12

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v22

    iget-object v15, v0, Labcd/qw$a;->j6:Ljava/lang/String;

    invoke-static {}, Labcd/iw;->j6()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    move-object/from16 v8, p3

    invoke-direct/range {v5 .. v21}, Labcd/_v;-><init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;JLjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v5}, Labcd/Yv;->j6(Labcd/_v;)V

    invoke-virtual/range {p0 .. p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v6, v4, v0, v1, v2}, Labcd/Wv;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;J)V

    return-void
.end method

.method public static j6(Labcd/lw;JLjava/lang/Throwable;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") Event error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Output"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static j6(J)Z
    .registers 4

    invoke-static {p0, p1}, Labcd/Yv;->j6(J)Z

    move-result v0

    return v0
.end method
