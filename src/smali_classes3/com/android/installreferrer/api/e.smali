.class public Lcom/android/installreferrer/api/e;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/installreferrer/api/e;->j6:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/installreferrer/api/e;->j6:Landroid/os/Bundle;

    const-string v1, "install_referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FH()J
    .registers 3

    iget-object v0, p0, Lcom/android/installreferrer/api/e;->j6:Landroid/os/Bundle;

    const-string v1, "referrer_click_timestamp_seconds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public j6()J
    .registers 3

    iget-object v0, p0, Lcom/android/installreferrer/api/e;->j6:Landroid/os/Bundle;

    const-string v1, "install_begin_timestamp_seconds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
