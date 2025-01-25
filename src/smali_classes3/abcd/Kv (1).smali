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
    .registers 14

    if-eqz p1, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto/16 :goto_7b

    :cond_7
    :try_start_7
    invoke-static {}, Labcd/rw;->Zo()V

    goto/16 :goto_7b

    :cond_c
    iget-object p1, p0, Labcd/Kv;->j6:Lcom/android/installreferrer/api/b;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/b;->DW()Lcom/android/installreferrer/api/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/e;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/installreferrer/api/e;->FH()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {p1}, Lcom/android/installreferrer/api/e;->j6()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getInstallTime()J

    move-result-wide v3

    const/4 p1, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-eqz v10, :cond_36

    cmp-long v10, v5, v3

    if-gez v10, :cond_36

    const/4 v10, 0x1

    goto :goto_37

    :cond_36
    const/4 v10, 0x0

    :goto_37
    cmp-long v11, v1, v7

    if-eqz v11, :cond_40

    cmp-long v7, v1, v3

    if-gez v7, :cond_40

    const/4 p1, 0x1

    :cond_40
    const-wide/16 v7, 0x1

    if-eqz v10, :cond_4b

    if-eqz p1, :cond_4b

    cmp-long p1, v5, v1

    if-gtz p1, :cond_5d

    goto :goto_4f

    :cond_4b
    if-nez v10, :cond_52

    if-eqz p1, :cond_52

    :goto_4f
    add-long v5, v1, v7

    goto :goto_5d

    :cond_52
    if-eqz v10, :cond_57

    sub-long v1, v5, v7

    goto :goto_5d

    :cond_57
    const-wide/16 v1, 0x2

    sub-long v1, v3, v1

    sub-long v5, v3, v7

    :cond_5d
    :goto_5d
    invoke-static {}, Labcd/rw;->Zo()V

    new-instance p1, Lcom/appfour/backbone/api/objects/Market;

    const-string v3, "com.android.vending"

    invoke-direct {p1, v3}, Lcom/appfour/backbone/api/objects/Market;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/appfour/backbone/api/objects/MarketReferrer;

    invoke-direct {v3, p1, v0}, Lcom/appfour/backbone/api/objects/MarketReferrer;-><init>(Lcom/appfour/backbone/api/objects/Market;Ljava/lang/String;)V

    invoke-static {v3, v1, v2, v5, v6}, Labcd/ApplicationUtils;->j6(Lcom/appfour/backbone/api/objects/MarketReferrer;JJ)V

    iget-object p1, p0, Labcd/Kv;->j6:Lcom/android/installreferrer/api/b;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/b;->j6()V
    :try_end_74
    .catchall {:try_start_7 .. :try_end_74} :catchall_75

    goto :goto_7b

    :catchall_75
    move-exception p1

    const-string v0, "Runtime Error"

    invoke-static {v0, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7b
    return-void
.end method
