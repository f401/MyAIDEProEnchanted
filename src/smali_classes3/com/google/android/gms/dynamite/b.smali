.class final Lcom/google/android/gms/dynamite/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$b;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$b$a;)Lcom/google/android/gms/dynamite/DynamiteModule$b$b;
    .registers 7

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    iget v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    if-eqz v2, :cond_13

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    goto :goto_20

    :cond_13
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    if-eqz p1, :cond_20

    const/4 p1, -0x1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    :cond_20
    :goto_20
    return-object v0
.end method
