.class Lcom/crashlytics/android/core/G;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->Zo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/W;

.field final j6:Z


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Z)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/G;->DW:Lcom/crashlytics/android/core/W;

    iput-boolean p2, p0, Lcom/crashlytics/android/core/G;->j6:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/h;)V
    .registers 5

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/crashlytics/android/core/G;->j6:Z

    invoke-static {p1, v0, v1, v2}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
