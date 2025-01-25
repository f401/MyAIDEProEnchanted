.class Labcd/Zm$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field j6:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/Zm$a;->j6:I

    return-void
.end method


# virtual methods
.method j6()I
    .registers 3

    iget v0, p0, Labcd/Zm$a;->j6:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Labcd/Zm$a;->j6:I

    return v0
.end method
