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
    .registers 4

    const-wide v2, 0x267c38a81780b030L    # 2.668203999530262E-123

    const-class v0, Lcom/aide/licensing/d;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x176db1266c9f8848L    # 7.944236679718612E-196

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x176db1266c9f8848L    # 7.944236679718612E-196

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/licensing/d;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/aide/licensing/d;->tp:Landroid/os/Handler;

    return-object v0
.end method

.method private Hw()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3c76f59de02e45b4L
    .end annotation

    const-wide v2, -0x6369c68aa9a9ac64L

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6369c68aa9a9ac64L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.aide.premium.key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkjXTkIvABlLJgyvluBm4h4Ytw87BbBrSRXohMVMvk0Eq2pYJKT1jYfC1W65/YY5GcFYwMiaemVlpH40h/h+rkm+GYYq04awtN8zv35+HymbrW6ztGgNv7gF7ksAOOb8swqQwlx6uzfZWzbny7r9kkKURlXWmpkcKpWUjfoQ1MIRFxuXoJ2owTjvdkezI2hjCxC+NJ57QCG8tBoWJo5jscDRylHuaXBGVX7fJx7NsWzlk9xTXUFE7F8J5OaPRpgCNwo+xC0pXSoA/yCv1dOy4v2tPr9L9rfB95nrTwRs1ob44LOY3UqYgVMC1wpy+nxU6UGch8g8/DfHXfaefBcsbfwIDAQAB"

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.aide.java.premium.key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn+LHwdRGxOPUMAOl1xlpO/jK/2cqCBxkbIlP0fjvubrkNhj+TdoFzXAPEVJQDmBhRdgfOW7T1JyNDKjQYHqvsqxecl5DSxy+e2c3do2+OmtXDgsCZnwsPoQKZlXqYmr2m7oohe+ogGQ6dvK5ToyLEHtJu6zBs4HNrHEDJAZz4+eG8UydfPJut0VaBxFhLTwdInzILO27JcabVjNWSbMj/3ClErZjcaM9wBhPaftBFpyQWBiIVL5dULHspqlXsiVljpIvz1UTwkHwE+hqJPhPGLBIe6xqNPyv16IOssFskia97yekprSeoMaP0xzc/c7KT2sqsVuCUJsm41yDbqvIDwIDAQAB"

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.aide.designer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAscoEgrFdBkxPcWpFbDQhJaTdZ92LV4sGN7NdUmkp1OIL9m9vO8cYFRU2ZCpHEQ+gilfA2T37855hqegNJfv3Uv/Rh9gZYy+cEGyqEnZyjZ0eYXEMcRmuvLNCrkFpg8xlzRpAvwMB7Tseez5GSYuwefuSle5OBLYrKYxZ14qIiHBwYrS338+v0jIav07YAlwxqkLIEWikNN0lI7ZuJlhcgIiwCJCDT9WtHaU8GgOGYh4cTLnuNAo5FOsSNnEmSmdc4jRyWCPSSETMs+fbEy3BsDKpaO4I2b/VO0/GVmyI9jkYJgkmx/33gYKSTRw9BZR3yy7Vtnq64/afnSoMYqzkDQIDAQAB"

    goto :goto_0

    :cond_3
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh9PowqySSG6WBaQx3i5y+3vjHUlva+HzWV7ZlYCkMdY5rHxp48M566VZjQVPV9xF0a47f0n0kdECfNGcLvLtQdB6rhk1xW6ouQG+uCiLmjLomLVZbaHPS7kDDP0ETU7SpVksPfPFlHCNLgZ/68HQzWMv7WmQ5Y1+9x3QQ4EfC3gsQdftsNyjSr7GZ7oR3dMDPyMkjNa5tHi4ZzSEHJQyutD7ezURXAsmyEvFUphp871vKCHNrNA+NHt2KMptZdRuCpip6yr6yyD1uFGWZ7XDEtu9Gtt93dWlC6PyecA21LHbGGbv6M9T5WkyqYRyorDKxdfOXIYuuW2I5PdmiE//+wIDAQAB"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private VH()[Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x94476d8b6c5c20L
    .end annotation

    const-wide v4, 0x49a3f6e7f2cf4540L    # 5.698850676319214E46

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/licensing/d;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x49a3f6e7f2cf4540L    # 5.698850676319214E46

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/licensing/d;->v5()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v2, v1}, Labcd/ve;->j6(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private Zo()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x28b87ffb792410a5L
    .end annotation

    const-wide v2, -0x1910a9c4e396e9f9L    # -6.817458590942184E187

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1910a9c4e396e9f9L    # -6.817458590942184E187

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private gn()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x6d1bd6c98e41ea9cL
    .end annotation

    const-wide v6, -0x3488645a5ff6c994L    # -3.6179148582050175E55

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3488645a5ff6c994L    # -3.6179148582050175E55

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aide/licensing/d;->VH:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, "License check responsed pending - throttled"

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v0, "Requesting license check"

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/licensing/i;->j6(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/aide/licensing/d;->FH:Lcom/android/vending/licensing/ILicensingService;

    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/licensing/d$a;

    invoke-direct {v4, p0, v0, v1}, Lcom/aide/licensing/d$a;-><init>(Lcom/aide/licensing/d;J)V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/vending/licensing/ILicensingService;->j6(JLjava/lang/String;Lcom/android/vending/licensing/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/licensing/d;->VH:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Lcom/aide/licensing/d;J)J
    .registers 4

    iput-wide p1, p0, Lcom/aide/licensing/d;->VH:J

    return-wide p1
.end method

.method private j6(JILjava/lang/String;Ljava/lang/String;Z)Lcom/aide/licensing/f$a;
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x1eb71bba3fe0fd99L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    move/from16 v0, p6

    invoke-direct {v9, v0}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x286936d2da6e8c5L

    move-object v4, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    const/4 v2, -0x1

    :try_start_1
    iget-object v3, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz p6, :cond_4

    :goto_0
    move v7, v2

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-direct {p0}, Lcom/aide/licensing/d;->Zo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/aide/licensing/d;->Hw()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    const/4 v2, 0x0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    :try_start_3
    invoke-static/range {v3 .. v11}, Lcom/aide/licensing/f;->j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/f$a;

    move-result-object v3

    sget-object v4, Lcom/aide/licensing/b;->j6:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9

    const/4 v2, 0x4

    if-eq v4, v2, :cond_5

    const/4 v2, 0x5

    if-eq v4, v2, :cond_7

    iget-boolean v2, p0, Lcom/aide/licensing/d;->u7:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    iget-object v2, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;

    invoke-interface {v2}, Lcom/aide/licensing/g;->XX()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/aide/licensing/d;->Zo:J

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown LicenseVerificationResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    :goto_3
    if-nez p6, :cond_2

    :try_start_6
    iget-boolean v3, p0, Lcom/aide/licensing/d;->u7:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/aide/licensing/d;->u7()V

    :cond_2
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v3

    :goto_4
    sget-boolean v2, Lcom/aide/licensing/d;->DW:Z

    if-eqz v2, :cond_3

    const-wide v4, 0x286936d2da6e8c5L

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Boolean;

    move/from16 v0, p6

    invoke-direct {v11, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v3 .. v11}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v3

    :cond_4
    :try_start_7
    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_8
    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v7, -0x1

    goto/16 :goto_1

    :catch_2
    move-exception v2

    :try_start_9
    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/aide/licensing/d;->u7:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_6

    :try_start_a
    iget-object v2, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;

    invoke-interface {v2}, Lcom/aide/licensing/g;->XX()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_5
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/aide/licensing/d;->Zo:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_7
    :goto_6
    if-nez p6, :cond_8

    :try_start_c
    iget-boolean v2, p0, Lcom/aide/licensing/d;->u7:Z

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/aide/licensing/d;->u7()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :cond_8
    return-object v3

    :catch_3
    move-exception v2

    :try_start_d
    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    iget-object v4, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-static {v4}, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/licensing/d;->Hw()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v4}, Lcom/aide/licensing/f;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/e;

    move-result-object v4

    iget-wide v4, v4, Lcom/aide/licensing/e;->tp:J

    iput-wide v4, p0, Lcom/aide/licensing/d;->Zo:J

    if-nez p6, :cond_a

    sget-object v4, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    if-ne v3, v4, :cond_a

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1}, Lcom/aide/licensing/d;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    sget-object v4, Lcom/aide/licensing/f$a;->j6:Lcom/aide/licensing/f$a;

    if-eq v3, v4, :cond_b

    sget-object v4, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    if-ne v3, v4, :cond_c

    :cond_b
    const/4 v2, 0x1

    :cond_c
    iget-boolean v4, p0, Lcom/aide/licensing/d;->u7:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v4, :cond_d

    if-eqz v2, :cond_e

    :try_start_e
    iget-object v2, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v2, v0, v1}, Lcom/aide/licensing/g;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_d
    :goto_7
    :try_start_f
    iget-object v2, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-static {v2}, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->j6(Landroid/content/Context;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    :cond_e
    :try_start_10
    iget-object v2, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;

    invoke-interface {v2}, Lcom/aide/licensing/g;->XX()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7

    :catch_4
    move-exception v2

    :try_start_11
    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_7

    :catch_5
    move-exception v3

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    goto/16 :goto_3
.end method

.method static synthetic j6(Lcom/aide/licensing/d;Lcom/android/vending/licensing/ILicensingService;)Lcom/android/vending/licensing/ILicensingService;
    .registers 2

    iput-object p1, p0, Lcom/aide/licensing/d;->FH:Lcom/android/vending/licensing/ILicensingService;

    return-object p1
.end method

.method private j6(JILjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .annotation runtime Labcd/su;
        method = 0x9ecbd2d39c366abL
    .end annotation

    const-wide v8, 0x61df4e793ec8937L

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x61df4e793ec8937L

    move-object v2, p0

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/aide/licensing/d;->j6(JILjava/lang/String;Ljava/lang/String;Z)Lcom/aide/licensing/f$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/licensing/d;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/licensing/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/licensing/d;->gn()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/licensing/d;JILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/aide/licensing/d;->j6(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x762220f6ea19370L
    .end annotation

    const-wide v2, 0x353353437d1066a8L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x353353437d1066a8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/aide/licensing/d;->v5()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_4
    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/licensing/d;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catch_2
    move-exception v0

    move-object v1, v4

    :goto_2
    :try_start_5
    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_4
    :try_start_8
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Labcd/ue;->j6(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method static synthetic j6(Lcom/aide/licensing/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/licensing/d;->v5:Z

    return p1
.end method

.method private tp()Lcom/aide/licensing/f$a;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x117da6514dbb1438L
    .end annotation

    const-wide v8, 0x1a9d377d02bd8580L

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a9d377d02bd8580L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/licensing/d;->VH()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    sget-object v0, Lcom/aide/licensing/f$a;->Hw:Lcom/aide/licensing/f$a;

    :goto_0
    return-object v0

    :cond_2
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    aget-object v5, v0, v1

    const/4 v1, 0x1

    aget-object v6, v0, v1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/aide/licensing/d;->j6(JILjava/lang/String;Ljava/lang/String;Z)Lcom/aide/licensing/f$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private u7()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x99f5f2147ba165fL
    .end annotation

    const-wide v4, -0x8dd4b5b661abb3bL    # -7.53943292598306E265

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8dd4b5b661abb3bL    # -7.53943292598306E265

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "Stopping LicenseUpdateService"

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    const-class v3, Lcom/aide/licensing/LicenseUpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private v5()Ljava/io/File;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4797c0c3a9e6fc2fL
    .end annotation

    const-wide v4, -0x356f223030999613L    # -1.5776222386557056E51

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x356f223030999613L    # -1.5776222386557056E51

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "license.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 7

    const-wide v4, 0x3c7c32c84735921L

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3c7c32c84735921L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/licensing/d;->tp()Lcom/aide/licensing/f$a;

    move-result-object v1

    const/4 v0, 0x1

    sget-object v2, Lcom/aide/licensing/f$a;->DW:Lcom/aide/licensing/f$a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/aide/licensing/f$a;->FH:Lcom/aide/licensing/f$a;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/g;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/aide/licensing/d;->u7()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, -0x27006d434b670e40L    # -5.0956169361215865E120

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27006d434b670e40L    # -5.0956169361215865E120

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/licensing/d;->FH:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_1

    const-string v0, "License service shutdown"

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    iget-object v1, p0, Lcom/aide/licensing/d;->Hw:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/licensing/d;->Hw:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/licensing/d;->v5:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Landroid/content/Context;Z)V
    .registers 10

    const-wide v2, 0x224c7fd0343f1790L

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x224c7fd0343f1790L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aide/licensing/d;->tp:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/aide/licensing/d;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/licensing/d;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6()Z
    .registers 5

    const-wide v2, -0x5e52599ce20c2ddfL

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5e52599ce20c2ddfL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/licensing/d;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/licensing/g;)Z
    .registers 10

    const-wide v6, 0x27ab28e569f6c2b7L

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/licensing/d;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x27ab28e569f6c2b7L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/licensing/d;->EQ:Lcom/aide/licensing/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aide/licensing/d;->Zo:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/aide/licensing/d;->tp()Lcom/aide/licensing/f$a;

    move-result-object v2

    sget-object v3, Lcom/aide/licensing/b;->j6:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/aide/licensing/d;->FH:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/aide/licensing/d;->gn()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown LicenseVerificationResult "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    iget-boolean v2, p0, Lcom/aide/licensing/d;->v5:Z

    if-nez v2, :cond_8

    new-instance v2, Lcom/aide/licensing/a;

    invoke-direct {v2, p0}, Lcom/aide/licensing/a;-><init>(Lcom/aide/licensing/d;)V

    iput-object v2, p0, Lcom/aide/licensing/d;->Hw:Landroid/content/ServiceConnection;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.licensing.ILicensingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/aide/licensing/d;->gn:Landroid/content/Context;

    iget-object v4, p0, Lcom/aide/licensing/d;->Hw:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v2, p0, Lcom/aide/licensing/d;->v5:Z

    goto :goto_1

    :cond_7
    const-string v1, "Licensing service could not be bound"

    invoke-static {v1}, Labcd/ue;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v0, "Licensing service bind already pending"

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
