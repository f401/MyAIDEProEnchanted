.class public Labcd/C;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/C$a;,
        Labcd/C$b;,
        Labcd/C$c;
    }
.end annotation


# static fields
.field private static final j6:Labcd/C$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Labcd/C$b;

    invoke-direct {v0}, Labcd/C$b;-><init>()V

    sput-object v0, Labcd/C;->j6:Labcd/C$c;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    new-instance v0, Labcd/C$a;

    invoke-direct {v0}, Labcd/C$a;-><init>()V

    sput-object v0, Labcd/C;->j6:Labcd/C$c;

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/C$c;

    invoke-direct {v0}, Labcd/C$c;-><init>()V

    sput-object v0, Labcd/C;->j6:Labcd/C$c;

    goto :goto_0
.end method

.method public static DW(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 3

    sget-object v0, Labcd/C;->j6:Labcd/C$c;

    invoke-virtual {v0, p0, p1}, Labcd/C$c;->DW(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public static j6(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 3

    sget-object v0, Labcd/C;->j6:Labcd/C$c;

    invoke-virtual {v0, p0, p1}, Labcd/C$c;->j6(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method
