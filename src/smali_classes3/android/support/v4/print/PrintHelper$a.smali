.class Landroid/support/v4/print/PrintHelper$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/print/PrintHelper$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field DW:Landroid/graphics/BitmapFactory$Options;

.field private final FH:Ljava/lang/Object;

.field protected Hw:Z

.field VH:I

.field Zo:I

.field final j6:Landroid/content/Context;

.field protected v5:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->DW:Landroid/graphics/BitmapFactory$Options;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->FH:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/print/PrintHelper$a;->Zo:I

    iput v0, p0, Landroid/support/v4/print/PrintHelper$a;->VH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$a;->Hw:Z

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$a;->v5:Z

    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$a;->j6:Landroid/content/Context;

    return-void
.end method
