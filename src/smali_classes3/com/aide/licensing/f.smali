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
    .registers 3

    const-class v0, Lcom/aide/licensing/f;

    const-wide v1, -0x54301ff6e754a955L  # -1.1658522157826456E-97

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x766e21d588ff497L  # -8.49218318856156E272

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/f;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/f;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x6730ea5632da898L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x3377e8497044da99L  # 9.298495774605889E-61

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {p2}, Lcom/aide/licensing/f;->j6(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_53

    const/4 v1, 0x0

    :try_start_15
    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    invoke-static {p1}, Labcd/se;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "Signature verification failed."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_34} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_15 .. :try_end_34} :catch_45
    .catch Ljava/security/SignatureException; {:try_start_15 .. :try_end_34} :catch_3e
    .catch Labcd/te; {:try_start_15 .. :try_end_34} :catch_37
    .catchall {:try_start_15 .. :try_end_34} :catchall_53

    return v1

    :cond_35
    const/4 p0, 0x1

    return p0

    :catch_37
    move-exception v0

    :try_start_38
    const-string v0, "Could not Base64-decode signature."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    return v1

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_45
    move-exception v0

    const-string v0, "Invalid public key."

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    return v1

    :catch_4c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f;->DW:Z

    if-eqz v1, :cond_65

    const-wide v2, 0x3377e8497044da99L  # 9.298495774605889E-61

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/e;
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/f;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x13609037d77fd975L  # 2.402378001813936E-215

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_2c

    :cond_10
    const/4 v0, 0x0

    :try_start_11
    invoke-static {p0}, Lcom/aide/licensing/e;->j6(Ljava/lang/String;)Lcom/aide/licensing/e;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_15} :catch_25
    .catchall {:try_start_11 .. :try_end_15} :catchall_2c

    :try_start_15
    iget v2, v1, Lcom/aide/licensing/e;->FH:I

    invoke-static {v2}, Lcom/aide/licensing/f;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {p0, p1, p2}, Lcom/aide/licensing/f;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_24

    return-object v0

    :cond_24
    return-object v1

    :catch_25
    move-exception v1

    const-string v2, "Could not parse response."

    invoke-static {v2, v1}, Labcd/ue;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2c

    return-object v0

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/f;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x13609037d77fd975L  # 2.402378001813936E-215

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public static j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/f$a;
    .registers 26

    move/from16 v8, p3

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    sget-boolean v2, Lcom/aide/licensing/f;->j6:Z

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_43

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v14

    new-instance v4, Ljava/lang/Long;

    move-wide/from16 v5, p1

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v13

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v12

    new-instance v4, Ljava/lang/Integer;

    move/from16 v7, p4

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v11

    aput-object p5, v2, v10

    aput-object v0, v2, v9

    const/4 v4, 0x6

    aput-object v1, v2, v4

    const/4 v4, 0x7

    aput-object p8, v2, v4

    const-wide v14, -0x3ad4f419e1c3618L  # -7.285754630806117E290

    invoke-static {v14, v15, v3, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_47

    :cond_43
    move-wide/from16 v5, p1

    move/from16 v7, p4

    :goto_47
    const/4 v14, -0x1

    if-ne v8, v14, :cond_4d

    const-string v2, "Licensing data from file"

    goto :goto_4f

    :cond_4d
    const-string v2, "Licensing service response"

    :goto_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - code: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sig: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    if-eqz v0, :cond_80

    invoke-static/range {p6 .. p8}, Lcom/aide/licensing/f;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/e;

    move-result-object v3

    :cond_80
    move-object v15, v3

    if-ne v8, v14, :cond_88

    if-nez v15, :cond_88

    sget-object v0, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_88
    if-eqz v15, :cond_a2

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, v16

    move-object v7, v15

    invoke-static/range {v0 .. v7}, Lcom/aide/licensing/f;->j6(Landroid/content/Context;JIILjava/lang/String;ZLcom/aide/licensing/e;)Z

    move-result v0

    if-nez v0, :cond_a2

    sget-object v0, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_a2
    if-ne v8, v14, :cond_a7

    iget v0, v15, Lcom/aide/licensing/e;->FH:I

    move v8, v0

    :cond_a7
    if-eqz v8, :cond_100

    if-eq v8, v13, :cond_f8

    if-eq v8, v12, :cond_100

    if-eq v8, v11, :cond_e3

    if-eq v8, v10, :cond_db

    if-eq v8, v9, :cond_d3

    packed-switch v8, :pswitch_data_142

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown response code for license check: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    goto :goto_fd

    :pswitch_cb  #0x101
    const-string v0, "Error contacting licensing server."

    invoke-static {v0}, Labcd/ue;->FH(Ljava/lang/String;)V

    sget-object v0, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_d3
    const-string v0, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v0}, Labcd/ue;->FH(Ljava/lang/String;)V

    sget-object v0, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_db
    const-string v0, "An error has occurred on the licensing server."

    invoke-static {v0}, Labcd/ue;->FH(Ljava/lang/String;)V

    sget-object v0, Lcom/aide/licensing/f$a;->v5:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_e3
    :pswitch_e3  #0x102, 0x103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Licensing error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/ue;->FH(Ljava/lang/String;)V

    goto :goto_fd

    :cond_f8
    const-string v0, "Not licensed."

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    :goto_fd
    sget-object v0, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_100
    if-nez v15, :cond_10a

    const-string v0, "Licensed but no data"

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V

    sget-object v0, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_10a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v15, Lcom/aide/licensing/e;->tp:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_116

    const/4 v0, 0x1

    goto :goto_117

    :cond_116
    const/4 v0, 0x0

    :goto_117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v15, Lcom/aide/licensing/e;->EQ:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_123

    const/4 v14, 0x1

    goto :goto_124

    :cond_123
    const/4 v14, 0x0

    :goto_124
    if-nez v14, :cond_133

    iget-wide v1, v15, Lcom/aide/licensing/e;->EQ:J

    iget-wide v3, v15, Lcom/aide/licensing/e;->gn:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x19bfcc00

    cmp-long v5, v1, v3

    if-lez v5, :cond_133

    goto :goto_134

    :cond_133
    move v13, v14

    :goto_134
    if-eqz v0, :cond_139

    sget-object v0, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_139
    if-eqz v13, :cond_13e

    sget-object v0, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    return-object v0

    :cond_13e
    sget-object v0, Lcom/aide/licensing/f$a;->FH:Lcom/aide/licensing/f$a;

    return-object v0

    nop

    :pswitch_data_142
    .packed-switch 0x101
        :pswitch_cb  #00000101
        :pswitch_e3  #00000102
        :pswitch_e3  #00000103
    .end packed-switch
.end method

.method private static j6(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x19b25084e4ce6800L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x60ffff817f21a019L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/f;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_40

    :cond_d
    :try_start_d
    invoke-static {p0}, Labcd/se;->j6(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_20} :catch_39
    .catch Labcd/te; {:try_start_d .. :try_end_20} :catch_2d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_d .. :try_end_20} :catch_21
    .catchall {:try_start_d .. :try_end_20} :catchall_40

    return-object p0

    :catch_21
    move-exception v3

    :try_start_22
    const-string v4, "Invalid key specification."

    invoke-static {v4}, Labcd/ue;->DW(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_2d
    move-exception v3

    const-string v4, "Could not decode from Base64."

    invoke-static {v4}, Labcd/ue;->DW(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_39
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/f;->DW:Z

    if-eqz v4, :cond_48

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v3
.end method

.method public static j6(I)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xbfd6470d2dad760L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/f;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_18

    :cond_d
    const/4 v0, 0x1

    if-eqz p0, :cond_17

    if-eq p0, v0, :cond_17

    const/4 v1, 0x2

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    return v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/f;->DW:Z

    if-eqz v4, :cond_25

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method public static j6(Landroid/content/Context;JIILjava/lang/String;ZLcom/aide/licensing/e;)Z
    .registers 14

    sget-boolean v0, Lcom/aide/licensing/f;->j6:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v0, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v3, 0x4

    aput-object p5, v0, v3

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/4 v3, 0x6

    aput-object p7, v0, v3

    const-wide v3, 0x1e47ef6ff29d6ac7L  # 8.312875281415498E-163

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_39
    const/4 v0, -0x1

    if-eq p3, v0, :cond_46

    iget v3, p7, Lcom/aide/licensing/e;->FH:I

    if-eq v3, p3, :cond_46

    const-string p0, "Response codes don\'t match."

    :goto_42
    invoke-static {p0}, Labcd/ue;->DW(Ljava/lang/String;)V

    return v2

    :cond_46
    const-wide/16 v3, -0x1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_55

    iget-wide v3, p7, Lcom/aide/licensing/e;->Hw:J

    cmp-long p3, v3, p1

    if-eqz p3, :cond_55

    const-string p0, "Nonce doesn\'t match."

    goto :goto_42

    :cond_55
    if-eqz p6, :cond_62

    iget-wide p1, p7, Lcom/aide/licensing/e;->Hw:J

    invoke-static {p0, p1, p2}, Lcom/aide/licensing/i;->j6(Landroid/content/Context;J)Z

    move-result p0

    if-nez p0, :cond_62

    const-string p0, "Nonce does not match device."

    goto :goto_42

    :cond_62
    iget-object p0, p7, Lcom/aide/licensing/e;->v5:Ljava/lang/String;

    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    const-string p0, "Package name doesn\'t match."

    goto :goto_42

    :cond_6d
    :try_start_6d
    iget-object p0, p7, Lcom/aide/licensing/e;->Zo:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eq p4, v0, :cond_7d

    if-eq p0, p4, :cond_7d

    const-string p0, "Unexpected version code"

    invoke-static {p0}, Labcd/ue;->DW(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_7c} :catch_7e

    return v2

    :cond_7d
    return v1

    :catch_7e
    move-exception p0

    const-string p0, "Non-int version code"

    goto :goto_42
.end method
