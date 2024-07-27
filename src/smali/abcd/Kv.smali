.class final Labcd/Kv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/installreferrer/api/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Lv;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final j6:Lcom/android/installreferrer/api/b;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/b;)V
    .registers 2

    iput-object p1, p0, Labcd/Kv;->j6:Lcom/android/installreferrer/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 1

    return-void
.end method

.method public j6(I)V
    .registers 16

    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v12, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Labcd/rw;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Runtime Error"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Labcd/Kv;->j6:Lcom/android/installreferrer/api/b;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/b;->DW()Lcom/android/installreferrer/api/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/installreferrer/api/e;->DW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/installreferrer/api/e;->FH()J

    move-result-wide v0

    mul-long/2addr v0, v8

    invoke-virtual {v2}, Lcom/android/installreferrer/api/e;->j6()J

    move-result-wide v2

    mul-long/2addr v2, v8

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getInstallTime()J

    move-result-wide v8

    cmp-long v6, v2, v10

    if-eqz v6, :cond_4

    cmp-long v6, v2, v8

    if-gez v6, :cond_4

    move v6, v4

    :goto_1
    cmp-long v10, v0, v10

    if-eqz v10, :cond_5

    cmp-long v10, v0, v8

    if-gez v10, :cond_5

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    :cond_2
    add-long v2, v0, v12

    :cond_3
    :goto_3
    invoke-static {}, Labcd/rw;->Zo()V

    new-instance v4, Lcom/appfour/backbone/api/objects/Market;

    const-string v5, "com.android.vending"

    invoke-direct {v4, v5}, Lcom/appfour/backbone/api/objects/Market;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/appfour/backbone/api/objects/MarketReferrer;

    invoke-direct {v5, v4, v7}, Lcom/appfour/backbone/api/objects/MarketReferrer;-><init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;)V

    invoke-static {v5, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Lcom/appfour/backbone/api/objects/MarketReferrer;JJ)V

    iget-object v0, p0, Labcd/Kv;->j6:Lcom/android/installreferrer/api/b;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/b;->j6()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move v6, v5

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    :cond_6
    if-nez v6, :cond_7

    if-nez v4, :cond_2

    :cond_7
    if-eqz v6, :cond_8

    sub-long v0, v2, v12

    goto :goto_3

    :cond_8
    const-wide/16 v0, 0x2

    sub-long v0, v8, v0

    sub-long v2, v8, v12

    goto :goto_3
.end method
