.class public abstract Lcom/myopicmobile/textwarrior/common/ColorScheme;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;
    }
.end annotation


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final BLUE:I = -0xffff01

.field private static final DARK_BLUE:I = -0x2fbf23

.field private static final DARK_RED:I = -0x750000

.field private static final GREEN:I = -0x775578

.field private static final GREY:I = -0x7f7f80

.field private static final INDIGO:I = -0xd5bf01

.field private static final LIGHT_BLUE:I = -0x9f7f01

.field private static final LIGHT_BLUE2:I = -0xbf4f01

.field private static final LIGHT_GREY:I = -0x555556

.field private static final MAROON:I = -0x800000

.field private static final OLIVE_GREEN:I = -0xc080a1

.field private static final PURPLE:I = -0x22bb78

.field private static final PURPLE2:I = -0xff01

.field private static final RED:I = 0x44ff0000

.field private static final WHITE:I = -0x20


# instance fields
.field protected _colors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->generateDefaultColors()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/ColorScheme;->_colors:Ljava/util/HashMap;

    return-void
.end method

.method private generateDefaultColors()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v5, -0x7f7f80

    const/16 v4, -0x20

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->values()[Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x683fdc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xbf4f01

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_DISABLED:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LINE_HIGHLIGHT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x20888888

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x555556

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->COMMENT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xc080a1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->KEYWORD:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x2fbf23

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NAME:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, -0xd5bf01

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LITERAL:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x9f7f01

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->STRING:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    const v3, -0x22bb78

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SECONDARY:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I
    .registers 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ColorScheme;->_colors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Color not specified for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTokenColor(I)I
    .registers 3

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Invalid token type"

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/ColorScheme;->getColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;)I

    move-result v0

    return v0

    :sswitch_0
    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->KEYWORD:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NAME:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->COMMENT:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->STRING:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->LITERAL:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SECONDARY:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_6
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0xa -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x1e -> :sswitch_3
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x33 -> :sswitch_4
    .end sparse-switch
.end method

.method public abstract isDark()Z
.end method

.method public setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/ColorScheme;->_colors:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
