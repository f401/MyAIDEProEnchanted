.class final Lcom/google/android/gms/dynamite/e;
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
    .registers 8

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_1a

    :cond_16
    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$b$a;->j6(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    :goto_1a
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    if-nez p1, :cond_27

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    if-nez p1, :cond_27

    iput v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    goto :goto_33

    :cond_27
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    iget p2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    if-lt p1, p2, :cond_31

    const/4 p1, -0x1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    goto :goto_33

    :cond_31
    iput v3, v0, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    :goto_33
    return-object v0
.end method
