.class final Landroid/support/v4/app/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field DW:Landroid/support/v4/app/Fragment;

.field FH:I

.field Hw:I

.field Zo:I

.field j6:I

.field v5:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroid/support/v4/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/app/e$a;->j6:I

    iput-object p2, p0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    return-void
.end method
