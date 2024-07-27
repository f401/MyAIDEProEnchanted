.class final Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final DW:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

.field private final j6:Lcom/android/installreferrer/api/d;


# direct methods
.method private constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/d;)V
    .registers 5

    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->DW:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->j6:Lcom/android/installreferrer/api/d;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please specify a listener to know when setup is done."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/d;Lcom/android/installreferrer/api/c;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/d;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "InstallReferrerClient"

    const-string v1, "Install Referrer service connected."

    invoke-static {v0, v1}, Labcd/pu;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->DW:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-static {p2}, Labcd/dx$a;->j6(Landroid/os/IBinder;)Labcd/dx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Labcd/dx;)Labcd/dx;

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->DW:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->j6:Lcom/android/installreferrer/api/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/installreferrer/api/d;->j6(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "InstallReferrerClient"

    const-string v1, "Install Referrer service disconnected."

    invoke-static {v0, v1}, Labcd/pu;->DW(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->DW:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Labcd/dx;)Labcd/dx;

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->DW:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;->j6:Lcom/android/installreferrer/api/d;

    invoke-interface {v0}, Lcom/android/installreferrer/api/d;->j6()V

    return-void
.end method
