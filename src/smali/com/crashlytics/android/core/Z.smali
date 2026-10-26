.class Lcom/crashlytics/android/core/Z;
.super Labcd/fz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/ca;->lg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfz",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final Hw:Lcom/crashlytics/android/core/ca;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/core/Z;->Hw:Lcom/crashlytics/android/core/ca;

    invoke-direct {p0}, Labcd/fz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/core/Z;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/core/Z;->Hw:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ca;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/cz;
    .locals 1

    sget-object v0, Labcd/cz;->Hw:Labcd/cz;

    return-object v0
.end method
