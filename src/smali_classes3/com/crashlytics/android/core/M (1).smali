.class Lcom/crashlytics/android/core/M;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->VH(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/W;

.field final j6:Lcom/crashlytics/android/core/Ta;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/Ta;)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/M;->DW:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/M;->j6:Lcom/crashlytics/android/core/Ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/h;)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/M;->j6:Lcom/crashlytics/android/core/Ta;

    iget-object v1, v0, Lcom/crashlytics/android/core/Ta;->DW:Ljava/lang/String;

    iget-object v2, v0, Lcom/crashlytics/android/core/Ta;->FH:Ljava/lang/String;

    iget-object v0, v0, Lcom/crashlytics/android/core/Ta;->Hw:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
