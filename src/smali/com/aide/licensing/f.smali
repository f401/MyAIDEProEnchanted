.class public Lcom/aide/licensing/f;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/licensing/f$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x54301ff6e754a955L    # -1.1658522157826456E-97

    const-class v0, Lcom/aide/licensing/f;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x766e21d588ff497L    # -8.49218318856156E272

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x766e21d588ff497L    # -8.49218318856156E272

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x6730ea5632da898L
    .end annotation

    const-wide v8, 0x3377e8497044da99L    # 9.298495774605889E-61

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3377e8497044da99L    # 9.298495774605889E-61

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p2}, Lcom/aide/licensing/f;->j6(Ljava/lang/String;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    invoke-static {p1}, Labcd/se;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Signature verification failed."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Labcd/te; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v6

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Could not Base64-decode signature."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v1

    sget-boolean v0, Lcom/aide/licensing/f;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catch_3
    move-exception v0

    :try_start_3
    const-string v0, "Invalid public key."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/e;
    .registers 13

    const-wide v8, 0x13609037d77fd975L    # 2.402378001813936E-215

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13609037d77fd975L    # 2.402378001813936E-215

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/aide/licensing/e;->j6(Ljava/lang/String;)Lcom/aide/licensing/e;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    iget v1, v0, Lcom/aide/licensing/e;->FH:I

    invoke-static {v1}, Lcom/aide/licensing/f;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/aide/licensing/f;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v6

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not parse response."

    invoke-static {v1, v0}, Labcd/ue;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/licensing/f;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public static j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/f$a;
    .registers 22

    sget-boolean v2, Lcom/aide/licensing/f;->j6:Z

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    const-wide v2, -0x3ad4f419e1c3618L    # -7.285754630806117E290

    const/4 v4, 0x0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    const/4 v6, 0x6

    aput-object p7, v5, v6

    const/4 v6, 0x7

    aput-object p8, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    const-string v2, "Licensing data from file"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - code: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sig: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    if-eqz p6, :cond_2

    invoke-static/range {p6 .. p8}, Lcom/aide/licensing/f;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/e;

    move-result-object v10

    :goto_1
    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    if-nez v10, :cond_3

    sget-object v2, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    :goto_2
    return-object v2

    :cond_1
    const-string v2, "Licensing service response"

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_4

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v10}, Lcom/aide/licensing/f;->j6(Landroid/content/Context;JIILjava/lang/String;ZLcom/aide/licensing/e;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    iget v0, v10, Lcom/aide/licensing/e;->FH:I

    move/from16 p3, v0

    :cond_5
    if-eqz p3, :cond_a

    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    move/from16 v0, p3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    move/from16 v0, p3

    if-eq v0, v2, :cond_6

    packed-switch p3, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown response code for license check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/ue;->DW(Ljava/lang/String;)V

    :goto_3
    sget-object v2, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    goto :goto_2

    :pswitch_0
    const-string v2, "Error contacting licensing server."

    invoke-static {v2}, Labcd/ue;->FH(Ljava/lang/String;)V

    sget-object v2, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    goto :goto_2

    :cond_6
    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v2}, Labcd/ue;->FH(Ljava/lang/String;)V

    sget-object v2, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    goto :goto_2

    :cond_7
    const-string v2, "An error has occurred on the licensing server."

    invoke-static {v2}, Labcd/ue;->FH(Ljava/lang/String;)V

    sget-object v2, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    goto :goto_2

    :cond_8
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Licensing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/ue;->FH(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v2, "Not licensed."

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-nez v10, :cond_b

    const-string v2, "Licensed but no data"

    invoke-static {v2}, Labcd/ue;->DW(Ljava/lang/String;)V

    sget-object v2, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v10, Lcom/aide/licensing/e;->tp:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    const/4 v2, 0x1

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v10, Lcom/aide/licensing/e;->EQ:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_10

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_c

    iget-wide v4, v10, Lcom/aide/licensing/e;->EQ:J

    iget-wide v6, v10, Lcom/aide/licensing/e;->gn:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x19bfcc00

    cmp-long v4, v4, v6

    if-lez v4, :cond_c

    const/4 v3, 0x1

    :cond_c
    if-eqz v2, :cond_e

    sget-object v2, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    sget-object v2, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    goto/16 :goto_2

    :cond_f
    sget-object v2, Lcom/aide/licensing/f$a;->FH:Lcom/aide/licensing/f$a;

    goto/16 :goto_2

    :cond_10
    move v3, v11

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static j6(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x19b25084e4ce6800L
    .end annotation

    const-wide v4, -0x60ffff817f21a019L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x60ffff817f21a019L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {p0}, Labcd/se;->j6(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Labcd/te; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Invalid key specification."

    invoke-static {v1}, Labcd/ue;->DW(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    const-string v1, "Could not decode from Base64."

    invoke-static {v1}, Labcd/ue;->DW(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public static j6(I)Z
    .registers 9

    const-wide v6, 0xbfd6470d2dad760L

    const/4 v4, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/licensing/f;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xbfd6470d2dad760L

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, v4, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public static j6(Landroid/content/Context;JIILjava/lang/String;ZLcom/aide/licensing/e;)Z
    .registers 15

    sget-boolean v0, Lcom/aide/licensing/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e47ef6ff29d6ac7L    # 8.312875281415498E-163

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    iget v0, p7, Lcom/aide/licensing/e;->FH:I

    if-eq v0, p3, :cond_1

    const-string v0, "Response codes don\'t match."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    iget-wide v0, p7, Lcom/aide/licensing/e;->Hw:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    const-string v0, "Nonce doesn\'t match."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_3

    iget-wide v0, p7, Lcom/aide/licensing/e;->Hw:J

    invoke-static {p0, v0, v1}, Lcom/aide/licensing/i;->j6(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Nonce does not match device."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p7, Lcom/aide/licensing/e;->v5:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Package name doesn\'t match."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p7, Lcom/aide/licensing/e;->Zo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq p4, v1, :cond_5

    if-eq v0, p4, :cond_5

    const-string v0, "Unexpected version code"

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Non-int version code"

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
