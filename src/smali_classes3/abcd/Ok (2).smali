.class Labcd/Ok;
.super Ltv/ouya/console/api/a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Pk;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/ouya/console/api/a<",
        "Ljava/lang/String;",
        ">;"
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
.field final FH:Labcd/Pk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x8bcfc7db1f8c320L

    const-wide v2, -0xa33cc6fe9a71c15L

    const-class v4, Labcd/Ok;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Pk;)V
    .registers 2

    iput-object p1, p0, Labcd/Ok;->FH:Labcd/Pk;

    invoke-direct {p0}, Ltv/ouya/console/api/a;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x45f83ef0b2125320L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ok;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x35214302da06e229L  # -4.600216041605299E52

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OUYA check purchases failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Labcd/Ok;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x35214302da06e229L  # -4.600216041605299E52

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/Ok;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2580adc2aa9f66b8L
    .end annotation

    const-wide v0, 0x16edde41d91e52b5L  # 3.121632720902116E-198

    :try_start_5
    sget-boolean v2, Labcd/Ok;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ok;->FH:Labcd/Pk;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/Pk;->j6(Labcd/Pk;Z)Z

    new-instance v2, Ltv/ouya/console/api/g;

    invoke-direct {v2}, Ltv/ouya/console/api/g;-><init>()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_5b

    :try_start_17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Labcd/Ok;->FH:Labcd/Pk;

    invoke-static {v4}, Labcd/Pk;->j6(Labcd/Pk;)Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltv/ouya/console/api/g;->j6(Lorg/json/JSONObject;Ljava/security/PublicKey;)Ljava/util/List;

    move-result-object v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_54
    .catchall {:try_start_17 .. :try_end_26} :catchall_5b

    :try_start_26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/ouya/console/api/Receipt;

    invoke-virtual {v3}, Ltv/ouya/console/api/Receipt;->j6()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aide_full_30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v5

    const-wide/32 v6, 0x5265c00

    add-long/2addr v3, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v6}, Labcd/Ek;->j6(JZ)V

    goto :goto_2a

    :cond_53
    return-void

    :catch_54
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v2

    sget-boolean v3, Labcd/Ok;->DW:Z

    if-eqz v3, :cond_63

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    goto :goto_65

    :goto_64
    throw v2

    :goto_65
    goto :goto_64
.end method
