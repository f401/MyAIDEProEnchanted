.class public Labcd/vl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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

    const-class v0, Labcd/vl;

    const-wide v1, -0x8710481aa7116d3L  # -7.992104789920913E267

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x23914f64ebe42530L  # -1.784526662256395E137

    :try_start_6
    sget-boolean v3, Labcd/vl;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/vl;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private j6(Labcd/fL;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9e4214798838640L
    .end annotation

    const-wide v0, 0xee32633b4656d5dL  # 5.88145334203825E-237

    :try_start_5
    sget-boolean v2, Labcd/vl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "granted"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    const-string v2, "data"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "signature"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    const-string v7, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4PX6yTLxZ2OSmBKIgeEZNnP6UFqdAqVmlHGJeJFSNPa1cQv6fjTBA0CB9V95Fz6rv16XDEvWk0ewcsWLWuf6y1+ajsWP9K7G5bCHJ0YwVaoqeXJz6149wDiQBzLtzVh5FdPZdCP5CXnRon2yOMYxTqaKmtz/Ou3FdYGqAmz4UXc5CVOV7C5KPbSAcWURKlbaCRi/X0htUHSHdwBuJ8QW2PExtG+0Ev65S39SXdYfz9QtZZt7BaL1aeTmDBi5FO27tFH6rFA/dnTV1e5A4aemhz4hHNn9BgOiws1NW5Zmy6pHi+2P9H7pCQte805/mOdidnm84uFS5sMSviDD55LwyQIDAQAB"

    invoke-static {v7, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    const-string v6, "SHA1withRSA"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/security/Signature;->update([B)V

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-nez v4, :cond_5c

    return v3

    :cond_5c
    new-instance v4, Labcd/jL;

    invoke-direct {v4}, Labcd/jL;-><init>()V

    invoke-virtual {v4, v2}, Labcd/jL;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/fL;

    sget-object v4, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v5, "packageName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    return v3

    :cond_76
    const-string v4, "Intel"

    const-string v5, "sponsoringProgram"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    return v3

    :cond_85
    const-string v4, "googleAccountAddress"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_b0

    array-length v5, v4

    const/4 v6, 0x0

    :goto_9f
    if-ge v6, v5, :cond_b0

    aget-object v7, v4, v6

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_a9
    .catchall {:try_start_5 .. :try_end_a9} :catchall_b1

    if-eqz v7, :cond_ad

    const/4 p1, 0x1

    return p1

    :cond_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    :cond_b0
    return v3

    :catchall_b1
    move-exception v2

    sget-boolean v3, Labcd/vl;->DW:Z

    if-eqz v3, :cond_b9

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_b9
    goto :goto_bb

    :goto_ba
    throw v2

    :goto_bb
    goto :goto_ba
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x20833281210f9f3fL

    :try_start_5
    sget-boolean v2, Labcd/vl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/vl;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x142816695023fb3bL  # -3.1445691483708745E211

    :try_start_5
    sget-boolean v2, Labcd/vl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_53

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sponsorship.json"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_16} :catch_51
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_4c
    .catchall {:try_start_c .. :try_end_16} :catchall_53

    :try_start_16
    new-instance v3, Labcd/jL;

    invoke-direct {v3}, Labcd/jL;-><init>()V

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Labcd/jL;->j6(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/fL;

    invoke-direct {p0, v3}, Labcd/vl;->j6(Labcd/fL;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Labcd/Ek;->FH(J)V
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_3e

    :cond_38
    if-eqz v2, :cond_52

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3d} :catch_51
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_4c
    .catchall {:try_start_3a .. :try_end_3d} :catchall_53

    goto :goto_52

    :catchall_3e
    move-exception v3

    :try_start_3f
    throw v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v4

    if-eqz v2, :cond_4b

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v2

    :try_start_48
    invoke-static {v3, v2}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw v4
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4c} :catch_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_53

    :catch_4c
    move-exception v2

    :try_start_4d
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_53

    goto :goto_52

    :catch_51
    move-exception v0

    :cond_52
    :goto_52
    return-void

    :catchall_53
    move-exception v2

    sget-boolean v3, Labcd/vl;->DW:Z

    if-eqz v3, :cond_5b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5b
    throw v2
.end method
