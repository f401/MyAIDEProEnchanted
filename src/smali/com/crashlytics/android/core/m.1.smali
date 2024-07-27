.class final Lcom/crashlytics/android/core/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/n;->j6(Landroid/app/Activity;Labcd/gA;Lcom/crashlytics/android/core/n$a;)Lcom/crashlytics/android/core/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/n$b;

.field final j6:Lcom/crashlytics/android/core/n$a;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/n$a;Lcom/crashlytics/android/core/n$b;)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/m;->j6:Lcom/crashlytics/android/core/n$a;

    iput-object p2, p0, Lcom/crashlytics/android/core/m;->DW:Lcom/crashlytics/android/core/n$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/crashlytics/android/core/m;->j6:Lcom/crashlytics/android/core/n$a;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/core/n$a;->j6(Z)V

    iget-object v0, p0, Lcom/crashlytics/android/core/m;->DW:Lcom/crashlytics/android/core/n$b;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/n$b;->j6(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
