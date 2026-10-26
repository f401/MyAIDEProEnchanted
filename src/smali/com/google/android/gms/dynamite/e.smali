.class final Lcom/google/android/gms/dynamite/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$b$a;)Lcom/google/android/gms/dynamite/DynamiteModule$b$b;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;

    invoke-direct {v1}, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    iget v0, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    if-eqz v0, :cond_0

    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    iget v0, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    if-nez v0, :cond_1

    iget v0, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    if-nez v0, :cond_1

    iput v2, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    :goto_1
    return-object v1

    :cond_0
    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    iget v2, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    if-lt v0, v2, :cond_2

    const/4 v0, -0x1

    iput v0, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    goto :goto_1

    :cond_2
    iput v3, v1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    goto :goto_1
.end method
