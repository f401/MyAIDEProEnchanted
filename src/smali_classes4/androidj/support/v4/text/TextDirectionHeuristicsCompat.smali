.class public final Landroidj/support/v4/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;,
        Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;,
        Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;,
        Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;,
        Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;,
        Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_LTR:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_RTL:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

.field public static final LOCALE:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

.field public static final LTR:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

.field public static final RTL:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v1, v2}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    new-instance v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v1, v3}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    new-instance v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v2}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    new-instance v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v3}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    new-instance v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    invoke-direct {v0, v1, v2}, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat;->ANYRTL_LTR:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    sget-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Landroidj/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    sput-object v0, Landroidj/support/v4/text/TextDirectionHeuristicsCompat;->LOCALE:Landroidj/support/v4/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRtlText(I)I
    .registers 2

    packed-switch p0, :pswitch_data_a

    const/4 v0, 0x2

    :goto_4
    return v0

    :pswitch_5  #0x0
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_7  #0x1, 0x2
    const/4 v0, 0x0

    goto :goto_4

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_7  #00000001
        :pswitch_7  #00000002
    .end packed-switch
.end method

.method static isRtlTextOrFormat(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_a

    const/4 v0, 0x2

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_7
    const/4 v0, 0x0

    goto :goto_4

    nop

    :sswitch_data_a
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
    .end sparse-switch
.end method
