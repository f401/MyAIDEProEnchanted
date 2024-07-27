.class public Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;
.super Lcom/myopicmobile/textwarrior/common/ColorScheme;


# static fields
.field private static final OFF_BLACK:I = -0xcccccd

.field private static final OFF_WHITE:I = -0xf0f13


# direct methods
.method public constructor <init>()V
    .registers 4

    const v2, -0xf0f13

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/ColorScheme;-><init>()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const v1, -0xcccccd

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->BACKGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->SELECTION_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {p0, v0, v2}, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;->CARET_FOREGROUND:Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;

    invoke-virtual {p0, v0, v2}, Lcom/myopicmobile/textwarrior/common/ColorSchemeLight;->setColor(Lcom/myopicmobile/textwarrior/common/ColorScheme$Colorable;I)V

    return-void
.end method


# virtual methods
.method public isDark()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
