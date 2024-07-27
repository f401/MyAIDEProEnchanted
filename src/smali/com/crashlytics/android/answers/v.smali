.class public Lcom/crashlytics/android/answers/v;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/os/Bundle;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/v;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/answers/v;->DW:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public DW()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/v;->DW:Landroid/os/Bundle;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/v;->j6:Ljava/lang/String;

    return-object v0
.end method
