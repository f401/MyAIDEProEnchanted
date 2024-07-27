.class public Lcom/myopicmobile/textwarrior/common/ColorSchemeDark;
.super Lcom/myopicmobile/textwarrior/common/ColorScheme;


# static fields
.field private static final BEIGE:I = -0x284583

.field private static final DARK_GREY:I = -0x9f9fa0

.field private static final FLUORESCENT_YELLOW:I = -0x100e6d

.field private static final JUNGLE_GREEN:I = -0x9f74b2

.field private static final LIGHT_GREY:I = -0x2c2c2d

.field private static final MARINE:I = -0xa9632a

.field private static final OCEAN_BLUE:I = -0xda9c6b

.field private static final OFF_BLACK:I = -0xfbfbfc

.field private static final OFF_WHITE:I = -0x2f2d2d

.field private static final PEACH:I = -0x29627b


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/ColorScheme;-><init>()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const v1, -0x2f2d2d

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/ColorSchemeDark;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const v1, -0xfbfbfc

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/ColorSchemeDark;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->NON_PRINTING_GLYPH:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const v1, -0x9f9fa0

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/ColorSchemeDark;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method


# virtual methods
.method public isDark()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
