.class public Labcd/Qi;
.super Labcd/Oi;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static EQ:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static we:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Qi;

    const-wide v1, 0x42436d2edc38b370L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x28d54e7116fd4488L  # 5.537222373756598E-112

    :try_start_6
    sget-boolean v3, Labcd/Qi;->EQ:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    const-string v3, "com.aide.designer"

    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAscoEgrFdBkxPcWpFbDQhJaTdZ92LV4sGN7NdUmkp1OIL9m9vO8cYFRU2ZCpHEQ+gilfA2T37855hqegNJfv3Uv/Rh9gZYy+cEGyqEnZyjZ0eYXEMcRmuvLNCrkFpg8xlzRpAvwMB7Tseez5GSYuwefuSle5OBLYrKYxZ14qIiHBwYrS338+v0jIav07YAlwxqkLIEWikNN0lI7ZuJlhcgIiwCJCDT9WtHaU8GgOGYh4cTLnuNAo5FOsSNnEmSmdc4jRyWCPSSETMs+fbEy3BsDKpaO4I2b/VO0/GVmyI9jkYJgkmx/33gYKSTRw9BZR3yy7Vtnq64/afnSoMYqzkDQIDAQAB"

    const-string v5, "com.aide.licensing.UiBuilderKeyLicensingService"

    const/16 v6, 0x64

    invoke-direct {p0, v3, v4, v6, v5}, Labcd/Oi;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v3

    sget-boolean v4, Labcd/Qi;->we:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method


# virtual methods
.method protected Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x14b5d6f636b297e7L
    .end annotation

    const-wide v0, -0x16278a651920e43fL  # -7.488982580664118E201

    :try_start_5
    sget-boolean v2, Labcd/Qi;->EQ:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->QX()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Qi;->we:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected j6(J)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2151deab7d9405b8L
    .end annotation

    const-wide v0, -0x2b442372af7cd450L  # -1.5235038625903568E100

    :try_start_5
    sget-boolean v2, Labcd/Qi;->EQ:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Labcd/Ek;->Hw(J)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Qi;->we:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method protected j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3b1e281a7f5ee3d4L
    .end annotation

    const-wide v0, 0x2f267e361db34f6cL  # 1.482036237296049E-81

    :try_start_5
    sget-boolean v2, Labcd/Qi;->EQ:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->Ws()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Qi;->we:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method
