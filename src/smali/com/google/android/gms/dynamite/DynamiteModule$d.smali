.class final Lcom/google/android/gms/dynamite/DynamiteModule$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final DW:I

.field private final j6:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$d;->j6:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$d;->DW:I

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$d;->j6:I

    return v0
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method
