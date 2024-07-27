.class public enum Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/common/ColorScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Colorable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final CARET_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final CARET_DISABLED:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final CARET_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final COMMENT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final KEYWORD:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final LINE_HIGHLIGHT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final LITERAL:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final NAME:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final SECONDARY:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final SELECTION_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final SELECTION_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

.field public static final STRING:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "FOREGROUND"

    invoke-direct {v0, v1, v3}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v4}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "SELECTION_FOREGROUND"

    invoke-direct {v0, v1, v5}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "SELECTION_BACKGROUND"

    invoke-direct {v0, v1, v6}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "CARET_FOREGROUND"

    invoke-direct {v0, v1, v7}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "CARET_BACKGROUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "CARET_DISABLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_DISABLED:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "LINE_HIGHLIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LINE_HIGHLIGHT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "NON_PRINTING_GLYPH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "COMMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->COMMENT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "KEYWORD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->KEYWORD:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "NAME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NAME:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "LITERAL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LITERAL:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "STRING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->STRING:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const-string v1, "SECONDARY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SECONDARY:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v1, v0, v4

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v1, v0, v5

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v1, v0, v6

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_DISABLED:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LINE_HIGHLIGHT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->COMMENT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->KEYWORD:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NAME:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LITERAL:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->STRING:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SECONDARY:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->$VALUES:[Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;
    .registers 5

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->$VALUES:[Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;
    .registers 1

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->$VALUES:[Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {v0}, [Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    return-object v0
.end method
