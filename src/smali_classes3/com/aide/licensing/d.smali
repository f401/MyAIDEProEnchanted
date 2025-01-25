.class public Lcom/aide/licensing/d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/licensing/d$a;
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


# instance fields
.field private EQ:Lcom/aide/licensing/g;
    .annotation runtime Labcd/ru;
        field = -0x1c91ccb5614f34c7L
    .end annotation
.end field

.field private FH:Lcom/android/vending/licensing/ILicensingService;
    .annotation runtime Labcd/ru;
        field = -0x22dfcd05f1ffef08L
    .end annotation
.end field

.field private Hw:Landroid/content/ServiceConnection;
    .annotation runtime Labcd/ru;
        field = 0x6e41257a8e378c4L
    .end annotation
.end field

.field private VH:J
    .annotation runtime Labcd/ru;
        field = 0x3a615b586ff2ccbfL
    .end annotation
.end field

.field private Zo:J
    .annotation runtime Labcd/ru;
        field = -0x14e57d67fe7e38f5L
    .end annotation
.end field

.field private gn:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = 0x1961327f37167c70L
    .end annotation
.end field

.field private tp:Landroid/os/Handler;
    .annotation runtime Labcd/ru;
        field = 0x265803121cfa359bL
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = -0x4e641a1cedfae494L
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x4cc03970a130611L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/licensing/d;

    const-wide v1, 0x267c38a81780b030L  # 2.668203999530262E-123

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x176db1266c9f8848L  # 7.944236679718612E-196

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/d;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/licensing/d;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/aide/licensing/d;->tp:Landroid/os/Handler;

    return-object p0
.end method

.method private Hw()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3c76f59de02e45b4L
    .end annotation

    const-wide v0, -0x6369c68aa9a9ac64L

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.aide.premium.key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_3c

    if-eqz v2, :cond_1b

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkjXTkIvABlLJgyvluBm4h4Ytw87BbBrSRXohMVMvk0Eq2pYJKT1jYfC1W65/YY5GcFYwMiaemVlpH40h/h+rkm+GYYq04awtN8zv35+HymbrW6ztGgNv7gF7ksAOOb8swqQwlx6uzfZWzbny7r9kkKURlXWmpkcKpWUjfoQ1MIRFxuXoJ2owTjvdkezI2hjCxC+NJ57QCG8tBoWJo5jscDRylHuaXBGVX7fJx7NsWzlk9xTXUFE7F8J5OaPRpgCNwo+xC0pXSoA/yCv1dOy4v2tPr9L9rfB95nrTwRs1ob44LOY3UqYgVMC1wpy+nxU6UGch8g8/DfHXfaefBcsbfwIDAQAB"

    return-object v0

    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.aide.java.premium.key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_3c

    if-eqz v2, :cond_2a

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn+LHwdRGxOPUMAOl1xlpO/jK/2cqCBxkbIlP0fjvubrkNhj+TdoFzXAPEVJQDmBhRdgfOW7T1JyNDKjQYHqvsqxecl5DSxy+e2c3do2+OmtXDgsCZnwsPoQKZlXqYmr2m7oohe+ogGQ6dvK5ToyLEHtJu6zBs4HNrHEDJAZz4+eG8UydfPJut0VaBxFhLTwdInzILO27JcabVjNWSbMj/3ClErZjcaM9wBhPaftBFpyQWBiIVL5dULHspqlXsiVljpIvz1UTwkHwE+hqJPhPGLBIe6xqNPyv16IOssFskia97yekprSeoMaP0xzc/c7KT2sqsVuCUJsm41yDbqvIDwIDAQAB"

    return-object v0

    :cond_2a
    :try_start_2a
    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.aide.designer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_3c

    if-eqz v0, :cond_39

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAscoEgrFdBkxPcWpFbDQhJaTdZ92LV4sGN7NdUmkp1OIL9m9vO8cYFRU2ZCpHEQ+gilfA2T37855hqegNJfv3Uv/Rh9gZYy+cEGyqEnZyjZ0eYXEMcRmuvLNCrkFpg8xlzRpAvwMB7Tseez5GSYuwefuSle5OBLYrKYxZ14qIiHBwYrS338+v0jIav07YAlwxqkLIEWikNN0lI7ZuJlhcgIiwCJCDT9WtHaU8GgOGYh4cTLnuNAo5FOsSNnEmSmdc4jRyWCPSSETMs+fbEy3BsDKpaO4I2b/VO0/GVmyI9jkYJgkmx/33gYKSTRw9BZR3yy7Vtnq64/afnSoMYqzkDQIDAQAB"

    return-object v0

    :cond_39
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh9PowqySSG6WBaQx3i5y+3vjHUlva+HzWV7ZlYCkMdY5rHxp48M566VZjQVPV9xF0a47f0n0kdECfNGcLvLtQdB6rhk1xW6ouQG+uCiLmjLomLVZbaHPS7kDDP0ETU7SpVksPfPFlHCNLgZ/68HQzWMv7WmQ5Y1+9x3QQ4EfC3gsQdftsNyjSr7GZ7oR3dMDPyMkjNa5tHi4ZzSEHJQyutD7ezURXAsmyEvFUphp871vKCHNrNA+NHt2KMptZdRuCpip6yr6yyD1uFGWZ7XDEtu9Gtt93dWlC6PyecA21LHbGGbv6M9T5WkyqYRyorDKxdfOXIYuuW2I5PdmiE//+wIDAQAB"

    return-object v0

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method private VH()[Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x94476d8b6c5c20L
    .end annotation

    const-wide v0, 0x49a3f6e7f2cf4540L  # 5.698850676319214E46

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/licensing/d;->v5()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_35

    const/4 v4, 0x0

    if-nez v3, :cond_18

    return-object v4

    :cond_18
    :try_start_18
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v3, v2}, Labcd/ve;->j6(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2f} :catch_30
    .catchall {:try_start_18 .. :try_end_2f} :catchall_35

    return-object v0

    :catch_30
    move-exception v2

    :try_start_31
    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    return-object v4

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method private Zo()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x28b87ffb792410a5L
    .end annotation

    const-wide v0, -0x1910a9c4e396e9f9L  # -6.817458590942184E187

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private gn()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x6d1bd6c98e41ea9cL
    .end annotation

    const-wide v0, -0x3488645a5ff6c994L  # -3.6179148582050175E55

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aide/licensing/d;->VH:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_20

    const-string v2, "License check responsed pending - throttled"

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_45

    return-void

    :cond_20
    :try_start_20
    const-string v2, "Requesting license check"

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-static {v2}, Lcom/aide/licensing/i;->j6(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/aide/licensing/d;->FH:Lcom/android/vending/licensing/ILicensingService;

    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/licensing/d$a;

    invoke-direct {v6, p0, v2, v3}, Lcom/aide/licensing/d$a;-><init>(Lcom/aide/licensing/d;J)V

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/android/vending/licensing/ILicensingService;->j6(JLjava/lang/String;Lcom/android/vending/licensing/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aide/licensing/d;->VH:J
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3f} :catch_40
    .catchall {:try_start_20 .. :try_end_3f} :catchall_45

    goto :goto_44

    :catch_40
    move-exception v2

    :try_start_41
    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    :goto_44
    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method static synthetic j6(Lcom/aide/licensing/d;J)J
    .registers 3

    iput-wide p1, p0, Lcom/aide/licensing/d;->VH:J

    return-wide p1
.end method

.method private j6(JILjava/lang/String;Ljava/lang/String;Z)Lcom/aide/licensing/f$a;
    .registers 24
    .annotation runtime Labcd/su;
        method = 0x1eb71bba3fe0fd99L
    .end annotation

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v9, p6

    :try_start_c
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_2d

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v11, v12}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v13}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x286936d2da6e8c5L

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_121

    :cond_2d
    const/4 v8, 0x0

    const/4 v1, -0x1

    :try_start_2f
    iget-object v0, v10, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v10, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v9, :cond_42

    goto :goto_44

    :cond_42
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_44} :catch_4a
    .catchall {:try_start_2f .. :try_end_44} :catchall_46

    :goto_44
    move v5, v1

    goto :goto_4f

    :catchall_46
    move-exception v0

    move v13, v9

    goto/16 :goto_115

    :catch_4a
    move-exception v0

    :try_start_4b
    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/Throwable;)V

    const/4 v5, -0x1

    :goto_4f
    iget-object v1, v10, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/aide/licensing/d;->Hw()Ljava/lang/String;

    move-result-object v0
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_46

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v7, p4

    const/16 v16, 0x0

    move-object/from16 v8, p5

    move v13, v9

    move-object v9, v0

    :try_start_65
    invoke-static/range {v1 .. v9}, Lcom/aide/licensing/f;->j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/f$a;

    move-result-object v1

    sget-object v0, Lcom/aide/licensing/b;->j6:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_cb

    const/4 v2, 0x2

    if-eq v0, v2, :cond_cb

    const/4 v2, 0x3

    if-eq v0, v2, :cond_cb

    const/4 v2, 0x4

    const-wide/32 v3, 0x36ee80

    if-eq v0, v2, :cond_b2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_10a

    iget-boolean v0, v10, Lcom/aide/licensing/d;->u7:Z

    if-nez v0, :cond_94

    iget-object v0, v10, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;
    :try_end_89
    .catchall {:try_start_65 .. :try_end_89} :catchall_114

    if-eqz v0, :cond_94

    :try_start_8b
    invoke-interface {v0}, Lcom/aide/licensing/g;->XX()V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_8e} :catch_8f
    .catchall {:try_start_8b .. :try_end_8e} :catchall_114

    goto :goto_94

    :catch_8f
    move-exception v0

    move-object v2, v0

    :try_start_91
    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/Throwable;)V

    :cond_94
    :goto_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v10, Lcom/aide/licensing/d;->Zo:J

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown LicenseVerificationResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    iget-boolean v0, v10, Lcom/aide/licensing/d;->u7:Z

    if-nez v0, :cond_c3

    iget-object v0, v10, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;
    :try_end_b8
    .catchall {:try_start_91 .. :try_end_b8} :catchall_114

    if-eqz v0, :cond_c3

    :try_start_ba
    invoke-interface {v0}, Lcom/aide/licensing/g;->XX()V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_bd} :catch_be
    .catchall {:try_start_ba .. :try_end_bd} :catchall_114

    goto :goto_c3

    :catch_be
    move-exception v0

    move-object v2, v0

    :try_start_c0
    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/Throwable;)V

    :cond_c3
    :goto_c3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v10, Lcom/aide/licensing/d;->Zo:J

    goto :goto_10a

    :cond_cb
    iget-object v0, v10, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/aide/licensing/d;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v15, v0}, Lcom/aide/licensing/f;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/e;

    move-result-object v0

    iget-wide v2, v0, Lcom/aide/licensing/e;->tp:J

    iput-wide v2, v10, Lcom/aide/licensing/d;->Zo:J

    if-nez v13, :cond_e5

    sget-object v0, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    if-ne v1, v0, :cond_e5

    invoke-direct {v10, v14, v15}, Lcom/aide/licensing/d;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e5
    sget-object v0, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    if-eq v1, v0, :cond_ef

    sget-object v0, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    if-ne v1, v0, :cond_ee

    goto :goto_ef

    :cond_ee
    const/4 v8, 0x0

    :cond_ef
    :goto_ef
    iget-boolean v0, v10, Lcom/aide/licensing/d;->u7:Z

    if-nez v0, :cond_105

    iget-object v0, v10, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;
    :try_end_f5
    .catchall {:try_start_c0 .. :try_end_f5} :catchall_114

    if-eqz v0, :cond_105

    if-eqz v8, :cond_fd

    :try_start_f9
    invoke-interface {v0, v14, v15}, Lcom/aide/licensing/g;->DW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    :cond_fd
    invoke-interface {v0}, Lcom/aide/licensing/g;->XX()V
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_100} :catch_101
    .catchall {:try_start_f9 .. :try_end_100} :catchall_114

    goto :goto_105

    :catch_101
    move-exception v0

    :try_start_102
    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/Throwable;)V

    :cond_105
    :goto_105
    iget-object v0, v10, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6(Landroid/content/Context;)V
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_114

    :cond_10a
    :goto_10a
    if-nez v13, :cond_113

    :try_start_10c
    iget-boolean v0, v10, Lcom/aide/licensing/d;->u7:Z

    if-eqz v0, :cond_113

    invoke-direct/range {p0 .. p0}, Lcom/aide/licensing/d;->u7()V

    :cond_113
    return-object v1

    :catchall_114
    move-exception v0

    :goto_115
    if-nez v13, :cond_11e

    iget-boolean v1, v10, Lcom/aide/licensing/d;->u7:Z

    if-eqz v1, :cond_11e

    invoke-direct/range {p0 .. p0}, Lcom/aide/licensing/d;->u7()V

    :cond_11e
    throw v0
    :try_end_11f
    .catchall {:try_start_10c .. :try_end_11f} :catchall_11f

    :catchall_11f
    move-exception v0

    goto :goto_123

    :catchall_121
    move-exception v0

    move v13, v9

    :goto_123
    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_148

    const-wide v2, 0x286936d2da6e8c5L

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v11, v12}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    move/from16 v1, p3

    move v4, v13

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, v4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_148
    throw v0
.end method

.method static synthetic j6(Lcom/aide/licensing/d;Lcom/android/vending/licensing/ILicensingService;)Lcom/android/vending/licensing/ILicensingService;
    .registers 2

    iput-object p1, p0, Lcom/aide/licensing/d;->FH:Lcom/android/vending/licensing/ILicensingService;

    return-object p1
.end method

.method private j6(JILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x9ecbd2d39c366abL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x61df4e793ec8937L

    move-object v3, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/aide/licensing/d;->j6(JILjava/lang/String;Ljava/lang/String;Z)Lcom/aide/licensing/f$a;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x61df4e793ec8937L

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method static synthetic j6(Lcom/aide/licensing/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/licensing/d;->gn()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/licensing/d;JILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/aide/licensing/d;->j6(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x762220f6ea19370L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x353353437d1066a8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_4f

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/aide/licensing/d;->v5()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_2f
    .catchall {:try_start_d .. :try_end_16} :catchall_2d

    :try_start_16
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_20} :catch_28
    .catchall {:try_start_16 .. :try_end_20} :catchall_26

    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_4f

    goto :goto_3c

    :catch_24
    move-exception v0

    goto :goto_39

    :catchall_26
    move-exception v0

    goto :goto_41

    :catch_28
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_30

    :catchall_2d
    move-exception v1

    goto :goto_44

    :catch_2f
    move-exception v1

    :goto_30
    :try_start_30
    invoke-static {v1}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    if-eqz v0, :cond_3c

    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_24
    .catchall {:try_start_35 .. :try_end_38} :catchall_4f

    goto :goto_3c

    :goto_39
    :try_start_39
    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4f

    :cond_3c
    :goto_3c
    return-void

    :catchall_3d
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_41
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_44
    if-eqz v0, :cond_4e

    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_4f

    goto :goto_4e

    :catch_4a
    move-exception v0

    :try_start_4b
    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    throw v1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_60

    const-wide v2, 0x353353437d1066a8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    throw v0
.end method

.method static synthetic j6(Lcom/aide/licensing/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/licensing/d;->v5:Z

    return p1
.end method

.method private tp()Lcom/aide/licensing/f$a;
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x117da6514dbb1438L
    .end annotation

    const-wide v0, 0x1a9d377d02bd8580L

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/licensing/d;->VH()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_17

    goto :goto_27

    :cond_17
    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    aget-object v9, v2, v3

    const/4 v3, 0x1

    aget-object v10, v2, v3

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/aide/licensing/d;->j6(JILjava/lang/String;Ljava/lang/String;Z)Lcom/aide/licensing/f$a;

    move-result-object v0

    return-object v0

    :cond_27
    :goto_27
    sget-object v0, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-object v0

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method private u7()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x99f5f2147ba165fL
    .end annotation

    const-wide v0, -0x8dd4b5b661abb3bL  # -7.53943292598306E265

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "Stopping LicenseUpdateService"

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    const-class v5, Lcom/aide/licensing/LicenseUpdateService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private v5()Ljava/io/File;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4797c0c3a9e6fc2fL
    .end annotation

    const-wide v0, -0x356f223030999613L  # -1.5776222386557056E51

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "license.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object v2

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x3c7c32c84735921L

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/licensing/d;->tp()Lcom/aide/licensing/f$a;

    move-result-object v2

    sget-object v3, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    if-eq v2, v3, :cond_18

    sget-object v3, Lcom/aide/licensing/f$a;->FH:Lcom/aide/licensing/f$a;

    if-ne v2, v3, :cond_21

    :cond_18
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/g;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    const/4 v2, 0x1

    :goto_22
    if-eqz v2, :cond_27

    invoke-direct {p0}, Lcom/aide/licensing/d;->u7()V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, -0x27006d434b670e40L  # -5.0956169361215865E120

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/licensing/d;->FH:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v2, :cond_24

    const-string v2, "License service shutdown"

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    iget-object v3, p0, Lcom/aide/licensing/d;->Hw:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/licensing/d;->Hw:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/licensing/d;->v5:Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public j6(Landroid/content/Context;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x224c7fd0343f1790L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aide/licensing/d;->tp:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/aide/licensing/d;->u7:Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x224c7fd0343f1790L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public j6()Z
    .registers 5

    const-wide v0, -0x5e52599ce20c2ddfL

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/licensing/d;->v5()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Lcom/aide/licensing/g;)Z
    .registers 10

    const-wide v0, 0x27ab28e569f6c2b7L

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aide/licensing/d;->Zo:J

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-gez v7, :cond_1a

    return v6

    :cond_1a
    invoke-direct {p0}, Lcom/aide/licensing/d;->tp()Lcom/aide/licensing/f$a;

    move-result-object v2

    sget-object v3, Lcom/aide/licensing/b;->j6:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_82

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4a

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4a

    const/4 v5, 0x4

    if-ne v3, v5, :cond_33

    goto :goto_4a

    :cond_33
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown LicenseVerificationResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/aide/licensing/d;->FH:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v2, :cond_52

    invoke-direct {p0}, Lcom/aide/licensing/d;->gn()V

    goto :goto_81

    :cond_52
    iget-boolean v2, p0, Lcom/aide/licensing/d;->v5:Z

    if-nez v2, :cond_7c

    new-instance v2, Lcom/aide/licensing/a;

    invoke-direct {v2, p0}, Lcom/aide/licensing/a;-><init>(Lcom/aide/licensing/d;)V

    iput-object v2, p0, Lcom/aide/licensing/d;->Hw:Landroid/content/ServiceConnection;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.licensing.ILicensingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    iget-object v5, p0, Lcom/aide/licensing/d;->Hw:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_76

    iput-boolean v2, p0, Lcom/aide/licensing/d;->v5:Z

    goto :goto_81

    :cond_76
    const-string v2, "Licensing service could not be bound"

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V

    return v6

    :cond_7c
    const-string v2, "Licensing service bind already pending"

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_5 .. :try_end_81} :catchall_83

    :goto_81
    return v4

    :cond_82
    return v6

    :catchall_83
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/d;->DW:Z

    if-eqz v3, :cond_8b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8b
    throw v2
.end method
