.class final Lcom/crashlytics/android/core/k;
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
.field final j6:Lcom/crashlytics/android/core/n$b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/n$b;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/k;->j6:Lcom/crashlytics/android/core/n$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p2, p0, Lcom/crashlytics/android/core/k;->j6:Lcom/crashlytics/android/core/n$b;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/crashlytics/android/core/n$b;->j6(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
