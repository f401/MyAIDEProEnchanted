.class final Lcom/google/android/gms/dynamite/f;
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
    .registers 6

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    const/4 v1, 0x1

    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    if-nez p1, :cond_1c

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    if-nez p1, :cond_1c

    const/4 p1, 0x0

    goto :goto_26

    :cond_1c
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    iget p2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    if-lt p1, p2, :cond_25

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    goto :goto_28

    :cond_25
    const/4 p1, -0x1

    :goto_26
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    :goto_28
    return-object v0
.end method
